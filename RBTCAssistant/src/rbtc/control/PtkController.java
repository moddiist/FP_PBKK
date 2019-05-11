package rbtc.control;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import rbtc.model.Buku;
import rbtc.model.Mahasiswa;
import rbtc.model.Pustakawan;

@Controller
@RequestMapping("ptk")
@SessionAttributes("model")
public class PtkController {
	@RequestMapping("/home-ptk")
	public ModelAndView halamanPustakawan() {
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
	
	//INI NAMPILIN DAFTAR MAHASISWA VIA PUSTAKAWAN
	@RequestMapping("/daftarmhs-ptk")
	public ModelAndView daftarmhsPustakawan() {
		ModelAndView mav = new ModelAndView("daftarmhs-pustakawan");
		
		//buat ngambil mahasiswa
		SessionFactory s = new Configuration().configure("hibernate.xml").addAnnotatedClass(Mahasiswa.class).buildSessionFactory();
		Session ses = s.getCurrentSession();
		try {
			ses.beginTransaction();
			List<Mahasiswa> listmahasiswa = ses.createQuery("from Mahasiswa").list();
			ses.getTransaction().commit();
			mav.addObject("mahasiswa", listmahasiswa);
		}
		finally {
			s.close();
		}
		
		return mav;
	}
	
	
	
	//INI BUAT NAMBAH PUSTAKAWAN LAIN
	@RequestMapping("/tambah-ptk")
	public String halamanTambahPustakwan(Model theModel) {
		
		Mahasiswa iniMahasiswa = new Mahasiswa();
		
		theModel.addAttribute("mahasiswa", iniMahasiswa);
		
		return "tmbh-pustakawan";
	}
}
