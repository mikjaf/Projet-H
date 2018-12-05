package fr.projet.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Partie")
public class Match extends Event {

	private Competition competitionType;
	private Boolean homeAway;
	
	@ManyToMany(mappedBy="matchsList")
	private List<Subscriber> subscribersList = new ArrayList<Subscriber>();
	
	@OneToOne
	private Transport transport;
	
	
	public Match() {
		super();
	}


	public Competition getCompetitionType() {
		return competitionType;
	}


	public void setCompetitionType(Competition competitionType) {
		this.competitionType = competitionType;
	}


	public Boolean ishomeAway() {
		return homeAway;
	}


	public void setHomeAway(Boolean homeAway) {
		this.homeAway = homeAway;
	}


	public List<Subscriber> getSubscribersList() {
		return subscribersList;
	}


	public void setSubscribersList(List<Subscriber> subscribersList) {
		this.subscribersList = subscribersList;
	}


	public Transport getTransport() {
		return transport;
	}


	public void setTransport(Transport transport) {
		this.transport = transport;
	}


	public Boolean getHomeAway() {
		return homeAway;
	}


	
}
