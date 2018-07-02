package service;

import java.util.List;

import dao.CompteCourantRepository;
import domaine.Client;
import domaine.CompteCourant;

public class CompteCourantService extends CrudService<CompteCourant> {
	
		private CompteCourantRepository getRepo() {
		return (CompteCourantRepository)this.repo;
	}
		public List<CompteCourant> getAllByClient(Client client) {
			return this.getRepo().getAllByClient(client);
		}
}
