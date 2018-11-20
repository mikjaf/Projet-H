package fr.projet.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.projet.beans.Workshop;
import fr.projet.dao.DaoInterface;

@Controller
@RequestMapping("/event")
public class CreateEventController {

	@Autowired
	private DaoInterface<Workshop> dao;

	@GetMapping("/createWorkshop")
	public String showCreateWorkshop() {
		return "createWorkshopForm";
	}

	@PostMapping("/createWorkshop")
	public String addWorkshop(Model model, 
			@RequestParam("theme") String theme,
			@DateTimeFormat(iso=ISO.DATE)
			@RequestParam("date") Date date,
			@RequestParam("equipment") String equipment,
			@RequestParam("description") String description) {
//		System.out.println("début createWorkshop");
		Workshop workshop = new Workshop();
		workshop.setTheme(theme);
		workshop.setDate(date);
		workshop.setEquipment(equipment);
		workshop.setDescription(description);

		workshop = dao.createOrUpdate(workshop);

		model.addAttribute("workshopsList", dao.findAll());
//		System.out.println("fin createWorkshop");
		return "workshopsList";
	}
	
	@GetMapping("/workshop/{id}")
	public String showWorkshop(@PathVariable("id") Long id, Model model) {
		Workshop workshop = dao.findById(id);
		model.addAttribute("workshop",  workshop);
		return "workshop";
	}
}
