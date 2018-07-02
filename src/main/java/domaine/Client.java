package domaine;

import java.util.List;

/**
 * Classe d'un client 
 * @author LENOIR et VOLATRON
 * 
 */

public class Client extends Personne {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Attributs
	private Integer id;

	private Conseille conseille;
	private List<Compte> listCompte;



//Constructeur avec id et typeClientS
	/** 
	 * Constructeur par defaut de la classe client
	 */
	public Client() {
		super();
	}
	/**
	 * Construteur avancée du client
	 * @param nom Nom du client
	 * @param prenom Prenom du client
	 * @param mail Email du client
	 * @param adresse Adresse entière du client (numero, rue, code postal ville)
	 */
	public Client(String nom, String prenom, String mail, String adresse) {
		super(nom,prenom,mail, adresse);
	}

	// Getters et setters

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Conseille getConseille() {
		return conseille;
	}

	public void setConseille(Conseille conseille) {
		this.conseille = conseille;
	}

//	public List<Compte> getListCompte() {
//		return listCompte;
//	}
//	public void setListCompte(List<Compte> listCompte) {
//		this.listCompte = listCompte;
//	}

}
