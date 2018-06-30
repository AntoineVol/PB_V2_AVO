package service;

import java.util.List;

import dao.ClientRepository;
import domaine.Client;
import domaine.Conseille;

public class ClientService extends CrudService<Client> {

	protected ClientRepository getRepo() {
		return (ClientRepository)this.repo;
	}
	
	public List<Client> getAllClientByConseille(Conseille csl) {
		
		return this.getRepo().findByConseille(csl);
	}
}
