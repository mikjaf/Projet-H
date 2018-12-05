package fr.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Event;

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
		TypedQuery<Event> query = session.createQuery("SELECT entity FROM Event entity ORDER BY date ASC", Event.class);
		return query.getResultList();
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Event event = findById(id);
		session.remove(event);
		
	}
}

	