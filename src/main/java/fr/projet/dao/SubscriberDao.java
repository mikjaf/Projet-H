package fr.projet.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Subscriber;

@Transactional
public class SubscriberDao implements SubscriberInterfaceDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Subscriber createOrUpdate(Subscriber item) {
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
	public Subscriber findById(Long id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(Subscriber.class, id);
	}

	@Override
	public List<Subscriber> findAll() {
		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Subscriber> query = session.createQuery("SELECT entity FROM Subscriber entity", Subscriber.class);
		return query.getResultList();
	}

	@Override
	public void delete(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Subscriber subscriber = findById(id);
		session.remove(subscriber);
	}
	
	
	
	/////
	
	
	public Subscriber findByEmail(String email) {

		Session session = sessionFactory.getCurrentSession();
		TypedQuery<Subscriber> query = session.createQuery("SELECT entity FROM Subscriber entity WHERE entity.email='" + email + "'", Subscriber.class);
		
		List<Subscriber> subscriberList = query.getResultList();
		if (subscriberList.size() == 1) {
			return subscriberList.get(0);
		}
		
		return null;
	}
	
	

}
