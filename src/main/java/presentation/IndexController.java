package presentation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import antlr.ParserSharedInputState;
import domaine.Client;
import domaine.Conseille;
import service.ClientService;
import service.ConseilleService;

@Controller
public class IndexController {

	@Autowired
	ClientService clientService;

	@Autowired
	ConseilleService conseilleService;

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
	public ModelAndView submit(@RequestParam String login, @RequestParam String password) {
		final boolean idCheck = this.conseilleService.IdCheck(login, password);
		if (idCheck == true) {
			final Integer conseilleId = this.conseilleService.getConseilleId(login, password);
			return this.ListeClients(conseilleId);
		} else {
			return this.ErrorAuthentification();
		}

	}

	@RequestMapping("/clients")
	public ModelAndView ListeClients(Integer conseilleId) {
		final ModelAndView mav = new ModelAndView("listeClients");
		final Conseille csl = this.conseilleService.getById(conseilleId);
		mav.addObject("listClient", this.clientService.getAllClientByConseille(csl));
		mav.addObject("idCsl", conseilleId);
		return mav;
	}

	@PostMapping("/clients")
	public ModelAndView submit(@RequestParam String nomNouveauClient, @RequestParam String prenomNouveauClient,
			@RequestParam String mailNouveauClient, @RequestParam String adresseNouveauClient, @RequestParam String idCsl) {
		final Client client = new Client();
		client.setPrenom(prenomNouveauClient);
		client.setNom(nomNouveauClient);
		client.setMail(mailNouveauClient);
		client.setAdresse(adresseNouveauClient);
		this.clientService.save(client);
		return this.ListeClients(Integer.parseInt(idCsl));
	}
	
}
