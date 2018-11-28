package fr.projet.dao;

import fr.projet.beans.Subscriber;

public interface SubscriberInterfaceDao extends DaoInterface<Subscriber> {
	
	Subscriber findByEmail(String email);
	
	Subscriber findByFirstName(String firstName);

}
