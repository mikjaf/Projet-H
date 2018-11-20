package fr.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Workshop;
@Transactional
public class WorkshopDao implements DaoInterface<Workshop> {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Workshop createOrUpdate(Workshop item) {
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
	public Workshop findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Workshop.class, id);
	}

	@Override
	public List<Workshop> findAll() {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Workshop> query = session.createQuery("SELECT entity FROM Workshop entity", Workshop.class);
		return query.getResultList();
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Workshop workshop = findById(id);
		session.remove(workshop);
		
	}
}
