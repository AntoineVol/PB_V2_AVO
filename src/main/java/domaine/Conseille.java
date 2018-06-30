package domaine;

import java.util.List;

/**
 * Classe des conseillés. 
 * @author LENOIR et VOLATRON
 */
public class Conseille extends Personne {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String login;
	private String password;
	private List<Client> listClient;
	
	/**
	 * Constructeur par defaut
	 */
	public Conseille() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * Constructeur élaboré
	 * @param nom Nom du conseillé
	 * @param prenom Prenom du conseillé
	 * @param login Login du conseillé
	 * @param password Mot de passe du conseillé
	 */
	public Conseille(String nom, String prenom, String login, String password) {
		super( nom,prenom);
		this.login = login;
		this.password=password;
	}


	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Client> getListClient() {
		return listClient;
	}

	public void setListClient(List<Client> listClient) {
		this.listClient = listClient;
	}
}
