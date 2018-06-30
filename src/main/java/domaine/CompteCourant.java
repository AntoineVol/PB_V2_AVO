package domaine;
/**
 * Classe des comptes courants. Ce sont des comptes qui possèdent un decouvert
 * @author LENOIR et VOLATRON
 */
public class CompteCourant extends Compte {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	private double decouvert;

	/**
	 * Constructeur par defaut
	 */
	public CompteCourant() {
		super();
	}
	
	/**
	 * Constructeur élaboré
	 * @param solde Solde à initlialiser lors de la création du compte
	 * @param dec Decouvert à initlialiser lors de la création du compte
	 */
	public CompteCourant(double solde, double dec) {
		super(solde);
		this.decouvert = dec;
	}

	public double getDecouvert() {
		return decouvert;
	}

	public void setDecouvert(double dec) {
		this.decouvert = dec;
	}

}
