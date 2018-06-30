package service;

import dao.ConseilleRepository;
import domaine.Conseille;

public class ConseilleService extends CrudService<Conseille>{

	protected ConseilleRepository getRepo() {
		return (ConseilleRepository)this.repo;
	}
	
	public boolean IdCheck(String login, String password) {
		Conseille csl = this.getRepo().findByLoginAndPassword(login, password);
		Boolean result;
		result=(csl==null)?false:true;
		return result;
	}
	
	public Integer getConseilleId(String login, String password) {
		Conseille csl = this.getRepo().findByLoginAndPassword(login, password);
		return csl.getId();
	}
	
}
