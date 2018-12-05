package fr.projet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.projet.beans.Event;
import fr.projet.beans.Subscriber;
import fr.projet.dao.DaoInterface;
import fr.projet.dao.SubscriberInterfaceDao;

@Controller
public class LoginController {
	
	@Autowired
	@Qualifier("subscriberDao")
	private SubscriberInterfaceDao subscriberDao;
	
	@Autowired
	@Qualifier("eventDao")
	private DaoInterface<Event> eventDao;
	
	@PostMapping("/connect")
	public String connect(Model model,
			@RequestParam("email") String email, 
			@RequestParam("password")  String password) {
		
		Subscriber subscriber = subscriberDao.findByEmail(email);
		
		if (email != null && !email.equals("") && password != null && !password.equals("") && subscriber != null && password.equals(subscriber.getPassword())) {
			model.addAttribute("eventsList", eventDao.findAll());
			return "dashboard";
		}
		else {
			return "errorLogin";
		}
	}

}
