package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domaine.Client;
import domaine.Conseille;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {
	
	@Transactional
	public List<Client> findByConseille(Conseille csl);
}
