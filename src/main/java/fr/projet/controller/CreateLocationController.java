package fr.projet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.projet.beans.Location;
import fr.projet.dao.DaoInterface;

@Controller
@RequestMapping("/location")
public class CreateLocationController {
	
	@Autowired
	@Qualifier("locationDao")
	private DaoInterface<Location> locationDao;
	
	@GetMapping("/createLocation")
	public String showCreateLocation(Model model) {
		return "createLocationForm";
	}
	
	@GetMapping("/locationList")
	public String showLocationList(Model model) {
		model.addAttribute("locationList", locationDao.findAll());
		return "locationList";
	}
	
	@PostMapping("/createLocation")
	public String createLocation(Model model,
			@RequestParam("locationName") String locationName,
			@RequestParam("streetNumber") String streetNumber,
			@RequestParam("street") String street,
			@RequestParam("postCode") String postCode,
			@RequestParam("city") String city,
			@RequestParam("country") String country) {
		
		Location location = new Location();
		location.setLocationName(locationName);
		location.setStreetNumber(streetNumber);
		location.setStreet(street);
		location.setPostCode(postCode);
		location.setCity(city);
		location.setCountry(country);
		
		location = locationDao.createOrUpdate(location);
		
		model.addAttribute("locationList", locationDao.findAll());
		
		return "locationList";
	}
	
	@GetMapping("/{id}")
	public String showLocation(@PathVariable("id") Long id, Model model) {
		Location location = locationDao.findById(id);
		model.addAttribute("location", location);
		return "location";
	}

}
