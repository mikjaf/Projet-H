package fr.projet.controller;

import java.util.Date;

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
import fr.projet.beans.Match;
import fr.projet.beans.Meeting;
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

	// pour arriver sur le formulaire CreateWorkshop
	@GetMapping("/createWorkshop")
	public String showCreateWorkshop() {
		return "createWorkshopForm";
	}

	@PostMapping("/createWorkshop")
	public String addWorkshop(Model model, 
			@RequestParam("theme") String theme,
			@DateTimeFormat(iso = ISO.DATE) 
			@RequestParam("date") Date date,
			@RequestParam("equipment") String equipment, 
			@RequestParam("description") String description) {
		
//		System.out.println("début createWorkshop");
		Workshop workshop = new Workshop();
		workshop.setTheme(theme);
		workshop.setDate(date);
		workshop.setEquipment(equipment);
		workshop.setDescription(description);

		workshop = workshopDao.createOrUpdate(workshop);

		model.addAttribute("workshopsList", workshopDao.findAll());
//		System.out.println("fin createWorkshop");
		return "workshopsList";
	}

	@GetMapping("/workshop/{id}")
	public String showWorkshop(@PathVariable("id") Long id, Model model) {
		Workshop workshop = workshopDao.findById(id);
		model.addAttribute("workshop", workshop);
		return "workshop";
	}

	////////////////////////////////////////////////////////////

	// pour arriver sur le formulaire CreateMeeting
	@GetMapping("/createMeeting")
	public String showCreateMeeting() {
		return "createMeetingForm";
	}

	@PostMapping("/createMeeting")
	public String addMeeting(Model model, 
			@RequestParam("topic") String topic,
			@DateTimeFormat(iso = ISO.DATE) 
			@RequestParam("date") Date date,
			@RequestParam("durationTime") Integer durationTime, 
			@RequestParam("description") String description) {

		Meeting meeting = new Meeting();
		meeting.setTopic(topic);
		meeting.setDate(date);
		meeting.setDurationTime(durationTime);
		meeting.setDescription(description);

		meeting = meetingDao.createOrUpdate(meeting);

		model.addAttribute("meetingsList", meetingDao.findAll());
		
		return "meetingsList";
	}

	@GetMapping("/meeting/{id}")
	public String showMeeting(@PathVariable("id") Long id, Model model) {
		Meeting meeting = meetingDao.findById(id);
		model.addAttribute("meeting", meeting);
		return "meeting";
	}

	////////////////////////////////////////////////////////////

	// pour arriver sur le formulaire CreateMatch
	@GetMapping("/createMatch")
	public String showCreateMatch() {
		return "createMatchForm";
	}

	@PostMapping("/createMatch")
	public String addMatch(Model model, 
			@RequestParam("title") String title,
			@DateTimeFormat(iso = ISO.DATE) 
			@RequestParam("date") Date date,
			@RequestParam("competition") Competition competition, 
			@RequestParam("description") String description,
			@RequestParam("homeAway") String homeAway,
			@RequestParam("transportation") String transportation,
//			@DateTimeFormat(iso = ISO.TIME)
//			@RequestParam("departureTime") Date departureTime,
//			@DateTimeFormat(iso = ISO.TIME)
//			@RequestParam("arrivalTime") Date arrivalTime,
			@RequestParam("participantMax") Integer participantMax
			) {
			System.out.println(competition);
			Match match = new Match();
			match.setTitle(title);
			match.setDate(date);
			match.setCompetitionType(competition);
			match.setDescription(description);
			match.setHomeAway(homeAway.equals("Extérieur"));

			Transport transport = new Transport ();
			transport.setTransportation(transportation);
//			transport.setDepartureTime(departureTime);
//			transport.setArrivalTime(arrivalTime);
			transport.setDepartureTime(new Date());
			transport.setArrivalTime(new Date());
			transport.setParticipantMax(participantMax);
			
				
		match = matchDao.createOrUpdate(match);
		transport = transportDao.createOrUpdate(transport);

		model.addAttribute("matchsList", matchDao.findAll());

		return "matchsList";
	}

	@GetMapping("/match/{id}")
	public String showMatch(@PathVariable("id") Long id, Model model) {
		Match match = matchDao.findById(id);
		model.addAttribute("match", match);
		return "match";
	}
	
}
