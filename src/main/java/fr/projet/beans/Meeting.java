package fr.projet.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;

@Entity
public class Meeting extends Event {

	private String durationTime;
	
	@ManyToMany(mappedBy="meetingsList", fetch=FetchType.EAGER)
	private List<Subscriber> subscribersList = new ArrayList<Subscriber>();
	
	public List<Subscriber> getSubscribersList() {
		return subscribersList;
	}


	public void setSubscribersList(List<Subscriber> subscribersList) {
		this.subscribersList = subscribersList;
	}


	public Meeting() {
		super();
	}


	public String getDurationTime() {
		return durationTime;
	}


	public void setDurationTime(String durationTime) {
		this.durationTime = durationTime;
	}

	
	
}
