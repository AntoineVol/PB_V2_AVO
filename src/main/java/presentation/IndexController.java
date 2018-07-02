package presentation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import domaine.Client;
import domaine.CompteCourant;
import domaine.CompteEpargne;
import domaine.Conseille;
import service.ClientService;
import service.CompteCourantService;
import service.CompteEpargneService;
import service.ConseilleService;

@Controller
public class IndexController {

	@Autowired
	ClientService clientService;

	@Autowired
	ConseilleService conseilleService;
	
	@Autowired
	CompteCourantService compteCourantService;
	
	@Autowired
	CompteEpargneService compteEpargneService;

	@RequestMapping("/Authentification")
	public ModelAndView Authentification() {
		final ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping("/AuthFailed")
	public ModelAndView ErrorAuthentification() {
		final ModelAndView mav = new ModelAndView("authFailed");
		return mav;
	}

	@PostMapping("/Authentification")
	public String submit(@RequestParam String login, @RequestParam String password, HttpSession session) {
		final boolean idCheck = this.conseilleService.IdCheck(login, password);
		if (idCheck == true) {
			final Integer conseilleId = this.conseilleService.getConseilleId(login, password);
			session.setAttribute("csl",this.conseilleService.getById(conseilleId));
			return "redirect:/clients.html?idCsl="+conseilleId;
		} else {
			return "redirect:/AuthFailed.html";
		}

	}

	@RequestMapping("/clients")
	public ModelAndView ListeClients(Integer idCsl, HttpSession session) {
		final ModelAndView mav = new ModelAndView("listeClients");
		final Conseille csl = this.conseilleService.getById(idCsl);
		session.setAttribute("client", null);
		mav.addObject("listClient", this.clientService.getAllClientByConseille(csl));
		mav.addObject("idCsl", idCsl);
		mav.addObject("modelClient", new Client());
		return mav;
	}

	@PostMapping("/clients")
	public String createClient(@ModelAttribute Client modelClient, HttpSession session) {
		Conseille csl = (Conseille)session.getAttribute("csl");
		modelClient.setConseille(csl);
		this.clientService.create(modelClient);
		return "redirect:/clients.html?idCsl="+csl.getId();
	}
	
	@RequestMapping("/clientEdition")
	public ModelAndView editionClient(Integer idClient, Integer idCsl) {
		final ModelAndView mav = new ModelAndView("clientEdition");
		final Client client = this.clientService.getById(idClient);
		mav.addObject("modelClient", client);
		return mav;
	}
	
	@PostMapping("/clientEdition")
	public String submit(@ModelAttribute Client modelClient, HttpSession session) {
		Conseille csl = (Conseille)session.getAttribute("csl");
		this.clientService.update(modelClient);
		return "redirect:/clients.html?idCsl="+csl.getId();
	}
	
	@RequestMapping("/deleteClient")
	public String deleteClient(Integer idDeleted,HttpSession session) {
		Conseille csl = (Conseille)session.getAttribute("csl");
		this.clientService.deleteById(idDeleted);
		return "redirect:/clients.html?idCsl="+csl.getId();
	}
	
	@RequestMapping("/listeComptes")
	public ModelAndView listeComptes(Integer idClient,HttpSession session) {
		ModelAndView mav = new ModelAndView("listeComptes");
		Client client= this.clientService.getById(idClient);
		session.setAttribute("client", client);
		mav.addObject("listCompteCourant",this.compteCourantService.getAllByClient(client));
		mav.addObject("listCompteEpargne",this.compteEpargneService.getAllByClient(client));
		mav.addObject("newCompteCourant",new CompteCourant());
		mav.addObject("newCompteEpargne",new CompteEpargne());
		return mav;
	}
	
	@PostMapping(value="/listeComptes", params= "decouvert")
	public String AddCompteCourant(@ModelAttribute CompteCourant newCompteCourant,HttpSession session) {
		Client client = (Client)session.getAttribute("client");
		newCompteCourant.setClient(client);
		this.compteCourantService.create(newCompteCourant);
		return "redirect:/listeComptes.html?idClient="+client.getId();
		
	}
	
	@PostMapping(value="/listeComptes", params="taux")
	public String AddCompteEpargne(@ModelAttribute CompteEpargne newCompteEpargne,HttpSession session) {
		Client client = (Client)session.getAttribute("client");
		newCompteEpargne.setClient(client);
		this.compteEpargneService.create(newCompteEpargne);
		return "redirect:/listeComptes.html?idClient="+client.getId();
		
	}
	
}
