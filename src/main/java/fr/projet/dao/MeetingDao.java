package fr.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Meeting;

@Transactional
public class MeetingDao implements DaoInterface<Meeting>{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Meeting createOrUpdate(Meeting item) {
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
	public Meeting findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Meeting.class, id);
	}

	@Override
	public List<Meeting> findAll() {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Meeting> query = session.createQuery("SELECT entity FROM Meeting entity", Meeting.class);
		return query.getResultList();
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Meeting meeting = findById(id);
		session.remove(meeting);	
	}

}
