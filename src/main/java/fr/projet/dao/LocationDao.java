package fr.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Location;

@Transactional
public class LocationDao implements DaoInterface<Location> {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Location createOrUpdate(Location item) {
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
	public Location findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Location.class, id);
	}

	@Override
	public List<Location> findAll() {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Location> query = session.createQuery("SELECT entity FROM Location entity", Location.class);
		return query.getResultList();
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Location location = findById(id);
		session.remove(location);
	}

	
	

}
