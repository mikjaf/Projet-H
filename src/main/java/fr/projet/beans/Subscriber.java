package fr.projet.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;

@Entity
public class Subscriber extends IdObject {   
	private String subscriberNumber;
	private String lastName;
	private String firstName;
	private String email;
	private String phone;
	private Boolean admin;
	private String password;
	
	@ManyToMany(fetch=FetchType.EAGER)
	private List<Workshop> workshopsList = new ArrayList<Workshop>();

	@ManyToMany
	private List<Match> matchsList = new ArrayList<Match>();
	
	@ManyToMany
	private List<Meeting> meetingsList = new ArrayList<Meeting>();
	
	@ManyToMany
	private List<Transport> transportsList = new ArrayList<Transport>();
	
	public Subscriber() {
		super();
	}


	public String getSubscriberNumber() {
		return subscriberNumber;
	}


	public void setSubscriberNumber(String subscriberNumber) {
		this.subscriberNumber = subscriberNumber;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Boolean isAdmin() {
		return admin;
	}


	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	
	public List<Workshop> getWorkshopsList() {
		return workshopsList;
	}


	public void setWorkshopsList(List<Workshop> workshopsList) {
		this.workshopsList = workshopsList;
	}


	public List<Match> getMatchsList() {
		return matchsList;
	}


	public void setMatchsList(List<Match> matchsList) {
		this.matchsList = matchsList;
	}


	public List<Meeting> getMeetingsList() {
		return meetingsList;
	}


	public void setMeetingsList(List<Meeting> meetingsList) {
		this.meetingsList = meetingsList;
	}


	public List<Transport> getTransportsList() {
		return transportsList;
	}


	public void setTransportsList(List<Transport> transportsList) {
		this.transportsList = transportsList;
	}


	public Boolean getAdmin() {
		return admin;
	}
	
}
