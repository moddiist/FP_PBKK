package rbtc.control;

import rbtc.model.Mahasiswa;
import rbtc.model.Pustakawan;
import rbtc.model.Login;
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
	public String loginPage(Model model){
		model.addAttribute("model", new Login());
		return "login-page";
	}
	
	@RequestMapping("/signup")
	public String signupPageMahasiswa(Model model) {
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
	
	@RequestMapping("/prosesLogin")
	public String prosesLogin(@Valid @ModelAttribute("model") Login model, BindingResult bindres) {
		if(bindres.hasErrors()) {
			return "login-page";
		}
		else {
			if(model.getRole().equals("Mahasiswa")) {
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Mahasiswa.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get student
					Mahasiswa user = ses.get(Mahasiswa.class, model.getId() );
					if(user.getPassword().equals(model.getPassword())) {
						model.setNama(user.getNama());
						model.setEmail(user.getEmail());
						model.setNohp(user.getNohp());
						return "logged-mahasiswa";
					}
					else {
						return "login-page";
					}

				}
				finally {
					s.close();
				}
			}
			else if(model.getRole().equals("Pustakawan")){
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Pustakawan.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get student
					Pustakawan user = ses.get(Pustakawan.class, model.getId() );
					if(user.getPassword().equals(model.getPassword())) {
						model.setNama(user.getNama());
						model.setEmail(user.getEmail());
						model.setNohp(user.getNohp());
						return "logged-pustakawan";
					}
					else {
						return "login-page";
					}

				}
				finally {
					s.close();
				}
			}
			else {
				return "login-page";
			}
			
		}
	}
}
