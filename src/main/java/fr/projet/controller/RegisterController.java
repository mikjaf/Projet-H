package fr.projet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.projet.beans.Subscriber;
import fr.projet.dao.DaoInterface;

@Controller
public class RegisterController {
	
	@Autowired
	@Qualifier("subscriberDao")
	private DaoInterface<Subscriber> subscriberDao;
	
	@PostMapping("/addSubscriber")
	public String addSubscriber(Model model, 
			@RequestParam("lastName") String lastName,
			@RequestParam("firstName") String firstName,
			@RequestParam("email") String email,
			@RequestParam("phone") String phone,
			@RequestParam("password") String password) {
		Subscriber subscriber = new Subscriber();
		subscriber.setLastName(lastName);
		subscriber.setFirstName(firstName);
		subscriber.setEmail(email);
		subscriber.setPhone(phone);
		subscriber.setPassword(password);

		subscriber = subscriberDao.createOrUpdate(subscriber);
		
		return "registerConfirm";
	}

}
