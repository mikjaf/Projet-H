package fr.projet.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.projet.beans.Competition;
import fr.projet.beans.Event;
import fr.projet.beans.EventType;
import fr.projet.beans.Location;
import fr.projet.beans.Match;
import fr.projet.beans.Meeting;
import fr.projet.beans.Subscriber;
import fr.projet.beans.Transport;
import fr.projet.beans.Workshop;
import fr.projet.dao.DaoInterface;

@Controller
@RequestMapping("/event")
public class CreateEventController {

	@Autowired
	@Qualifier("workshopDao")
	private DaoInterface<Workshop> workshopDao;

	@Autowired
	@Qualifier("meetingDao")
	private DaoInterface<Meeting> meetingDao;

	@Autowired
	@Qualifier("matchDao")
	private DaoInterface<Match> matchDao;

	@Autowired
	@Qualifier("transportDao")
	private DaoInterface<Transport> transportDao;

	@Autowired
	@Qualifier("locationDao")
	private DaoInterface<Location> locationDao;

	@Autowired
	@Qualifier("eventDao")
	private DaoInterface<Event> eventDao;

	@Autowired
	@Qualifier("subscriberDao")
	private DaoInterface<Subscriber> subscriberDao;

	// pour arriver sur le formulaire CreateWorkshop
	@GetMapping("/createWorkshop")
	public String showCreateWorkshop(Model model) {
		model.addAttribute("locationList", locationDao.findAll());
		return "createWorkshopForm";
	}

@PostMapping("/createWorkshop")
	public String addWorkshop(Model model, @RequestParam("title") String title,
			@RequestParam("eventType") EventType eventType,
			@DateTimeFormat(iso = ISO.DATE) @RequestParam("date") Date date, @RequestParam("location") Long locationId,
			@RequestParam("equipment") String equipment, @RequestParam("description") String description) {

		Location location = locationDao.findById(locationId);

		Workshop workshop = new Workshop();
		workshop.setTitle(title);
		workshop.setEventType(eventType);
		workshop.setDate(date);
		workshop.setLocation(location);
		workshop.setEquipment(equipment);
		workshop.setDescription(description);

		workshop = workshopDao.createOrUpdate(workshop);

		model.addAttribute("workshopsList", workshopDao.findAll());
		return "workshopsList";
	}

	@GetMapping("/workshop/{id}")
	public String showWorkshop(@PathVariable("id") Long id, Model model, HttpSession session) {
		Workshop workshop = workshopDao.findById(id);
		model.addAttribute("workshop", workshop);
		model.addAttribute("participantNumber", workshop.getSubscribersList().size());

		Object subscriber = session.getAttribute("subscriber");
		// verif que subscriber != null
		if (subscriber != null) {
			Subscriber user = (Subscriber) subscriber;
			boolean worshopAttributed = checkSubscriberAssociatedToWorshop(id, user);
			
			model.addAttribute("participateAlready", worshopAttributed);
		}

		return "workshop";
	}

	@GetMapping("/workshopsList")
	public String showWorkshopsList(Model model) {
		model.addAttribute("workshopsList", workshopDao.findAll());
		return "workshopsList";
	}

	@PostMapping("/workshop/participate")
	public String workshopParticipant(Model model, @RequestParam Long workshopId, HttpSession session) {
		// utiliser le dao pour recupérer le workshop qui correspond à l'id
		Workshop workshop = workshopDao.findById(workshopId);
		// dans la session, récup subscriber courant = utilisateur courant
		Object subscriber = session.getAttribute("subscriber");
		// verif que subscriber != null
		if (subscriber != null) {
			Subscriber user = (Subscriber) subscriber;

			boolean worshopAttributed = checkSubscriberAssociatedToWorshop(workshopId, user);

			if (!worshopAttributed) {
				// ajouter ce subscriber dans liste subscriber-workshop
				user.getWorkshopsList().add(workshop);
				workshop.getSubscribersList().add(user);

				// utiliser dao pour MAJ subscriber
				subscriberDao.createOrUpdate(user);				
			}

		}
		// ajouter nb participant
		model.addAttribute("participantNumber", workshop.getSubscribersList().size());
		return "redirect:/event/workshop/" + workshopId;
	}
	

	private boolean checkSubscriberAssociatedToWorshop(Long workshopId, Subscriber user) {
		boolean worshopAttributed = false;
		for (Workshop event : user.getWorkshopsList()) {
			if (event.getId() == workshopId) {
				System.out.println("Atelier déjà ajouté !");
				worshopAttributed = true;
			}
		}
		return worshopAttributed;
	}

	////////////////////////////////////////////////////////////
	// pour arriver sur le formulaire CreateMeeting
	@GetMapping("/createMeeting")
	public String showCreateMeeting(Model model) {
		model.addAttribute("locationList", locationDao.findAll());
		return "createMeetingForm";
	}

	@PostMapping("/createMeeting")
	public String addMeeting(Model model, @RequestParam("title") String title,
			@RequestParam("eventType") EventType eventType,
			@DateTimeFormat(iso = ISO.DATE) @RequestParam("date") Date date, @RequestParam("location") Long locationId,
			@RequestParam("durationTime") String durationTime, @RequestParam("description") String description) {

		Location location = locationDao.findById(locationId);

		Meeting meeting = new Meeting();
		meeting.setTitle(title);
		meeting.setEventType(eventType);
		meeting.setDate(date);
		meeting.setLocation(location);
		meeting.setDurationTime(durationTime);
		meeting.setDescription(description);

		meeting = meetingDao.createOrUpdate(meeting);

		model.addAttribute("meetingsList", meetingDao.findAll());

		return "meetingsList";
	}

	@GetMapping("/meeting/{id}")
	public String showMeeting(@PathVariable("id") Long id, Model model, HttpSession session) {
		Meeting meeting = meetingDao.findById(id);
		model.addAttribute("meeting", meeting);
	
		return "meeting";
	}

	@GetMapping("/meetingsList")
	public String showMeetingsList(Model model) {
		model.addAttribute("meetingsList", meetingDao.findAll());
		return "meetingsList";
	}
		
		

	////////////////////////////////////////////////////////////
	// pour arriver sur le formulaire CreateMatch
	@GetMapping("/createMatch")
	public String showCreateMatch(Model model) {
		model.addAttribute("locationList", locationDao.findAll());
		return "createMatchForm";
	}

	@PostMapping("/createMatch")
	public String addMatch(Model model, @RequestParam("title") String title,
			@RequestParam("eventType") EventType eventType,
			@DateTimeFormat(iso = ISO.DATE) @RequestParam("date") Date date, @RequestParam("location") Long locationId,
			@RequestParam("competition") Competition competition, @RequestParam("description") String description,
			@RequestParam("homeAway") String homeAway, @RequestParam("transportation") String transportation,
			@RequestParam("departureTime") String departureTime, @RequestParam("arrivalTime") String arrivalTime,
			@RequestParam("participantMax") Integer participantMax) {

		Match match = new Match();
		match.setTitle(title);
		match.setEventType(eventType);
		match.setDate(date);
		match.setCompetitionType(competition);
		match.setDescription(description);
		match.setHomeAway(homeAway.equals("Extérieur"));

		if (locationId != null) {
			Location location = locationDao.findById(locationId);
			match.setLocation(location);
		}

		Transport transport = new Transport();
		transport.setTransportation(transportation);
		transport.setDepartureTime(departureTime);
		transport.setArrivalTime(arrivalTime);
		transport.setParticipantMax(participantMax);
		System.out.println(competition);

		match = matchDao.createOrUpdate(match);
		transport = transportDao.createOrUpdate(transport);

		model.addAttribute("matchsList", matchDao.findAll());

		return "matchsList";
	}

	@GetMapping("/match/{id}")
	public String showMatch(@PathVariable("id") Long id, Model model, HttpSession session) {
		Match match = matchDao.findById(id);
		model.addAttribute("match", match);
		return "match";
	}

	@GetMapping("/matchsList")
	public String showMatchsList(Model model) {
		model.addAttribute("matchsList", matchDao.findAll());
		return "matchsList";
	}
	

	

	////////////////////////////////////////////////////////////
	// Dashboard

	@GetMapping("/{id}")
	public String showEvent(@PathVariable("id") Long id, Model model) {
		Event event = eventDao.findById(id);
		model.addAttribute("event", event);
		return "event";
	}

	@GetMapping("/dashboard")
	public String showDashboard(Model model) {
		model.addAttribute("eventsList", eventDao.findAll());
		return "dashboard";
	}
	

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// Vers la page d'ajout d'un nouvel élément

	@GetMapping("/createEvent")
	public String showCreateEvent() {
		return "createEventForm";
	}

}
