package fr.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Transport;

@Transactional
public class TransportDao implements DaoInterface<Transport>{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Transport createOrUpdate(Transport item) {
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
	public Transport findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Transport.class, id);
	}

	@Override
	public List<Transport> findAll() {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Transport> query = session.createQuery("SELECT entity FROM Transport entity", Transport.class);
		return query.getResultList();
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Transport transport = findById(id);
		session.remove(transport);
	}

}
