package fr.projet.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Event;
import fr.projet.beans.Match;
import fr.projet.beans.Meeting;
import fr.projet.beans.Workshop;

@Transactional
public class EventDao implements DaoInterface<Event>{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Event createOrUpdate(Event item) {
		Session session = sessionFactory.getCurrentSession();
		if(item.getId() == null) {
			session.persist(item);
		}
		else {
			session.merge(item);
		}
		
		return item;
	}
	

	@Override
	public Event findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Event.class, id);
	}

	@Override
	public List<Event> findAll() {
		Session session = sessionFactory.getCurrentSession();
		List<Event> events = new ArrayList<Event>();
		
		TypedQuery<Workshop> queryWorkshop = session.createQuery("SELECT entity FROM Workshop entity", Workshop.class);		
		events.addAll(queryWorkshop.getResultList());
		
		TypedQuery<Meeting> queryMeeting = session.createQuery("SELECT entity FROM Meeting entity", Meeting.class);		
		events.addAll(queryMeeting.getResultList());
		
		TypedQuery<Match> queryMatch = session.createQuery("SELECT entity FROM Match entity", Match.class);		
		events.addAll(queryMatch.getResultList());
		
		return events;
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Event event = findById(id);
		session.remove(event);
		
	}
}

	