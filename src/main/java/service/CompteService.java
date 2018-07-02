package service;

import java.util.List;

import dao.CompteRepository;
import domaine.Client;
import domaine.Compte;

public class CompteService extends CrudService<Compte> {
	
	protected CompteRepository getRepo() {
		return (CompteRepository)this.repo;
	}
	
	public List<Compte> getAllByClient(Client client) {
		return this.getRepo().getAllByClient(client);
	}
}
