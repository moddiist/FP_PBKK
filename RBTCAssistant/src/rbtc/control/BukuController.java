package rbtc.control;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import rbtc.model.Buku;
import rbtc.model.Pustakawan;

@Controller
@RequestMapping("buku")
@SessionAttributes("model")
public class BukuController {
	
	@RequestMapping("/tambahBuku")
	public String tambahBukuPage(Model book) {
		book.addAttribute("buku", new Buku());
		return "tmbh-buku";
	}
	
	@RequestMapping("/insertDb")
	public ModelAndView daftarBaruBuku(@Valid @ModelAttribute("buku") Buku buku, BindingResult bindres) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Buku.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("tmbh-buku");
			return mav;
		}
		else {
			try {
				//gunakan session disini
				ses.beginTransaction();
				ses.save(buku);
				ses.getTransaction().commit();
			}
			finally {
				s.close();
			}
			ModelAndView mav = new ModelAndView("redirect:/ptk/home-ptk");
			return mav;
		}
	}
}
