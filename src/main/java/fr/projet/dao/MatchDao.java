package fr.projet.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import fr.projet.beans.Match;
@Transactional
public class MatchDao implements DaoInterface<Match>{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Match createOrUpdate(Match item) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Match findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Match> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		
	}

}
