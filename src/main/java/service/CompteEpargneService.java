package service;

import java.util.List;

import dao.CompteEpargneRepository;
import domaine.Client;
import domaine.CompteEpargne;

public class CompteEpargneService extends CrudService<CompteEpargne>{

	protected CompteEpargneRepository getRepo() {
		return (CompteEpargneRepository)this.repo;
	}
	
	public List<CompteEpargne> getAllByClient(Client client){
		return this.getRepo().getAllByClient(client);
	}
}
