package fr.projet.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;

@Entity
public class Workshop extends Event {

	private String equipment;
	
	@ManyToMany(mappedBy="workshopsList", fetch=FetchType.EAGER)
	private List<Subscriber> subscribersList = new ArrayList<Subscriber>();
	
	public List<Subscriber> getSubscribersList() {
		return subscribersList;
	}


	public void setSubscribersList(List<Subscriber> subscribersList) {
		this.subscribersList = subscribersList;
	}


	public Workshop() {
		super();
	}


	public String getEquipment() {
		return equipment;
	}


	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}


	
}
