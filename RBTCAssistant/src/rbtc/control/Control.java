package rbtc.control;

import rbtc.model.Mahasiswa;
import javax.validation.Valid;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Control {

	@RequestMapping("/")
	public String mainPage() {
		return "home-page";
	}
	
	@RequestMapping("/login")
	public String loginPage(){
		return "login-page";
	}
	
	@RequestMapping("/signup")
	public String signupPage(Model model) {
		model.addAttribute("mahasiswa", new Mahasiswa());
		return "signup-page";
	}
	
	@RequestMapping("/prosesDaftar")
	public String daftarBaru(@Valid @ModelAttribute("mahasiswa") Mahasiswa mahasiswa, BindingResult bindres) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Mahasiswa.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		
		if(bindres.hasErrors()) {
			return "signup-page";
		}
		else {
			try {
				//gunakan session disini
				ses.beginTransaction();
				ses.save(mahasiswa);
				ses.getTransaction().commit();
			}
			finally {
				s.close();
			}
			return "logged-mahasiswa";
		}
	}
}
