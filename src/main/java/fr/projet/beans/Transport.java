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
	private Date departureTime;
	private Date arrivalTime;
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


	public Date getDepartureTime() {
		return departureTime;
	}


	public void setDepartureTime(Date departureTime) {
		this.departureTime = departureTime;
	}


	public Date getArrivalTime() {
		return arrivalTime;
	}


	public void setArrivalTime(Date arrivalTime) {
		this.arrivalTime = arrivalTime;
	}


	public Integer getseatsTaken() {
		return seatsTaken;
	}


	public void setseatsTaken(Integer seatsTaken) {
		this.seatsTaken = seatsTaken;
	}
	
	
}
