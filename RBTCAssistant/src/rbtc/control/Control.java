package rbtc.control;

import rbtc.model.*;
import java.util.List;
import javax.validation.Valid;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



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
		model.addAttribute("model", new Mahasiswa());
		return "signup-page";
	}
	
	@RequestMapping("/prosesDaftar")
	public ModelAndView daftarBaruMhs(@Valid @ModelAttribute("model") Mahasiswa model, BindingResult bindres, RedirectAttributes redir) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Mahasiswa.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("sign-up");
			return mav;
		}
		else {
			try {
				//gunakan session disini
				ses.beginTransaction();
				ses.save(model);
				ses.getTransaction().commit();
			}
			finally {
				s.close();
			}
			ModelAndView mav = new ModelAndView("redirect:/home-mhs");
			redir.addFlashAttribute("model", model);
			return mav;
		}
	}
	
	@RequestMapping("/prosesLogin")
	public ModelAndView prosesLogin(@Valid @ModelAttribute("model") Login model, BindingResult bindres, RedirectAttributes redir) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("/login");
			return mav;
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
						ModelAndView mav = new ModelAndView("redirect:/home-mhs");
						redir.addFlashAttribute("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("/login");
						return mav;
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
						ModelAndView mav = new ModelAndView("redirect:/home-ptk");
						redir.addFlashAttribute("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("/login");
						return mav;
					}

				}
				finally {
					s.close();
				}
			}
			else {
				ModelAndView mav = new ModelAndView("/login");
				return mav;
			}
			
		}
	}
	@RequestMapping("/home-ptk")
	public ModelAndView halamanPustakawan(@ModelAttribute("model") Pustakawan pustakawan, Model model) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Buku.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		ModelAndView mav = new ModelAndView("logged-pustakawan");
		try {
			ses.beginTransaction();
			
			//get student
			List<Buku> listbuku = ses.createQuery("from Buku").list();
			//commit transaction
			
			ses.getTransaction().commit();
			
			mav.addObject("buku", listbuku);
		}
		finally {
			s.close();
		}
		
		return mav;
	}
	
	@RequestMapping("/home-mhs")
	public ModelAndView halamanMahasiswa(@ModelAttribute("model") Mahasiswa mahasiswa) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Buku.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		ModelAndView mav = new ModelAndView("logged-mahasiswa");
		try {
			ses.beginTransaction();
			
			//get student
			List<Buku> listbuku = ses.createQuery("from Buku").list();
			//commit transaction
			
			ses.getTransaction().commit();
			
			mav.addObject("buku", listbuku);
		}
		finally {
			s.close();
		}
		
		return mav;
	}
	
}