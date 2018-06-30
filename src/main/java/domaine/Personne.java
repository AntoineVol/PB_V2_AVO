package domaine;

import java.io.Serializable;

/**
 * Classe des génerique des personnes. 
 * @author LENOIR et VOLATRON
 */
public abstract class Personne implements Entity, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer id;

	private String nom;

	private String prenom;

	private String mail;

	private String adresse;

	/**
	 *  Constructeur par defaut
	 */
	public Personne() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 *  Constructeur élaboré
	 * @param nom Nom de la personne
	 * @param prenom Prenom de la personne
	 * @param mail Mail de la personne
	 * @param adresse Adresse de la personne
	 */
	public Personne(String nom, String prenom, String mail, String adresse) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.adresse = adresse;

	}

	public Personne(String nom, String prenom) {
		super();
		this.nom = nom;
		this.prenom = prenom;

	}

	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	

}
