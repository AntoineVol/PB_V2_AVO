package domaine;

/**
 * Classe des comptes epargnes. Ce sont des comptes qui possèdent un taux
 * @author LENOIR et VOLATRON
 */
public class CompteEpargne extends Compte {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	private double taux;

	/**
	 *  Constructeur par defaut
	 */
	public CompteEpargne() {
		super();
	}
	/**
	 * Constructeur élaboré
	 * @param solde Solde à initlialiser lors de la création du compte
	 * @param tx Taux à initlialiser lors de la création du compte
	 */
	public CompteEpargne(double solde, double tx) {
		super(solde);
		this.taux = tx;
	}

	public double getTaux() {
		return taux;
	}

	public void setTaux(double tx) {
		this.taux = tx;
	}
}
