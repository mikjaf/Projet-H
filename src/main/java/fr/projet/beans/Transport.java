package fr.projet.beans;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
@Entity
public class Transport extends IdObject {

	private Integer participantMax;
	private String transportation;
	private String departureTime;
	private String arrivalTime;
	private Integer seatsTaken;
	
	@ManyToMany(mappedBy="transportsList")
	private List<Subscriber> subscribersList = new ArrayList<Subscriber>();
	
	@OneToOne
	private Match match;
	
	public Transport() {
		super();
	}


	public Integer getParticipantMax() {
		return participantMax;
	}


	public void setParticipantMax(Integer participantMax) {
		this.participantMax = participantMax;
	}


	public String getTransportation() {
		return transportation;
	}


	public void setTransportation(String transportation) {
		this.transportation = transportation;
	}


	public String getDepartureTime() {
		return departureTime;
	}


	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}


	public String getArrivalTime() {
		return arrivalTime;
	}


	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}


	public Integer getseatsTaken() {
		return seatsTaken;
	}


	public void setseatsTaken(Integer seatsTaken) {
		this.seatsTaken = seatsTaken;
	}
	
	
}
