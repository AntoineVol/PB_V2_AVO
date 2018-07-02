package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domaine.Client;
import domaine.CompteCourant;

@Repository
public interface CompteCourantRepository extends JpaRepository<CompteCourant, Integer> {

	@Transactional
	public List<CompteCourant> getAllByClient(Client client);
}
