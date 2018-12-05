package fr.projet.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;

@Entity
public class Meeting extends Event {

	private String topic;
	private String durationTime;
	
	@ManyToMany(mappedBy="meetingsList")
	private List<Subscriber> subscribersList = new ArrayList<Subscriber>();
	
	public Meeting() {
		super();
	}


	public String getTopic() {
		return topic;
	}


	public void setTopic(String topic) {
		this.topic = topic;
	}


	public String getDurationTime() {
		return durationTime;
	}


	public void setDurationTime(String durationTime) {
		this.durationTime = durationTime;
	}

	
	
}
