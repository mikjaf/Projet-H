package fr.projet.dao;

import java.util.List;

import fr.projet.beans.Workshop;

public interface WorkshopInterfaceDao extends DaoInterface<Workshop> {

	List<Workshop> findByUserId(Long userId);
}
