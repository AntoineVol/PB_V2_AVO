package domaine;

import java.io.Serializable;

/**
 * Classe des comptes bancaires génériques
 * @author LENOIR & ANTOINE
 *
 */
public class Compte implements Entity, Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private double solde;
	private String date;
	private Client client;
	
	/**
	 * Constructeur par default
	 */ 
	public Compte() {

	}
	
	/**
	 * Constructeur élaboré
	 * @param solde Solde à initlialiser lors de la création du compte
	 */
	public Compte(double solde) {
		this.solde = solde;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public double getSolde() {
		return solde;
	}
	public void setSolde(double solde) {
		this.solde = solde;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}




}
