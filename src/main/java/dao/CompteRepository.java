package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domaine.Client;
import domaine.Compte;

@Repository
public interface CompteRepository extends JpaRepository<Compte, Integer> {
	
	@Transactional
	public List<Compte> getAllByClient(Client client);
	
}
