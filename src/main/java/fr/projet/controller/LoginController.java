package fr.projet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import fr.projet.beans.Subscriber;
import fr.projet.dao.DaoInterface;

@Controller
public class LoginController {
	
	@Autowired
	private DaoInterface<Subscriber> dao;

}
