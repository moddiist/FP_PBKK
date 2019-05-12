package rbtc.control;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import rbtc.dao.MahasiswaDAO;
import rbtc.model.Buku;
import rbtc.model.Login;
import rbtc.model.Mahasiswa;

@Controller
@RequestMapping("mhs")
@SessionAttributes("model")
public class MhsController {
	
	@Autowired
	private MahasiswaDAO dao;
	
	@RequestMapping("/prosesDaftar")
	public ModelAndView daftarBaruMhs(@Valid @ModelAttribute("model") Mahasiswa model, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("sign-up");
			return mav;
		}
		else {
			ModelAndView mav = new ModelAndView("redirect:home-mhs");
			dao.tambahMhs(model);
			mav.addObject("model", model);
			return mav;
		}
	}
	
	@RequestMapping("/home-mhs")
	public ModelAndView halamanMahasiswa() {
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
	
	@RequestMapping(value="deleteMhs", method=RequestMethod.GET)
	public String deleteMahasiswa(@RequestParam("id") String nrp) {
		Mahasiswa mhs = dao.getMhs(nrp);
		dao.deleteMhs(mhs);
		return "redirect:/ptk/daftarmhs-ptk";
	}
	
}
