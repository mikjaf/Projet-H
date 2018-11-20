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
	private String title;
	private Boolean homeAway;
	
	@ManyToMany(mappedBy="gamesList")
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


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public Boolean ishomeAway() {
		return homeAway;
	}


	public void setHomeAway(Boolean homeAway) {
		this.homeAway = homeAway;
	}


	
}
