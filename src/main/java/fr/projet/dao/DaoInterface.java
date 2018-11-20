package fr.projet.dao;

import java.util.List;

public interface DaoInterface<T> {

	T createOrUpdate(T item);
	T findById(Long id);
	List<T>findAll();
	void delete(Long id);
	
}
