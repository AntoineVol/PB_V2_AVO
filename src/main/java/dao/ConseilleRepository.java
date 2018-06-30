package dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domaine.Conseille;

@Repository
public interface ConseilleRepository extends JpaRepository<Conseille, Integer>{
	
	@Transactional
	public Conseille findByLoginAndPassword(String login, String password);

	
}
