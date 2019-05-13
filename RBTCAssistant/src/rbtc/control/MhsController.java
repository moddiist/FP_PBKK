package rbtc.control;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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

import rbtc.dao.BukuDAO;
import rbtc.dao.MahasiswaDAO;
import rbtc.dao.PinjamDAO;
import rbtc.model.Buku;
import rbtc.model.Detail;
import rbtc.model.Login;
import rbtc.model.Mahasiswa;
import rbtc.model.Pustakawan;

@Controller
@RequestMapping("mhs")
@SessionAttributes("model")
public class MhsController {
	
	@Autowired
	private MahasiswaDAO dao;
	
	@Autowired
	private BukuDAO bukudao;
	
	@Autowired
	private PinjamDAO pinjamdao;
	
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
		ModelAndView mav = new ModelAndView("logged-mahasiswa");
		List<Buku> buku = bukudao.getAllBuku();
		mav.addObject("buku", buku);
		return mav;
	}
	
	@RequestMapping(value="deleteMhs", method=RequestMethod.GET)
	public String deleteMahasiswa(@RequestParam("id") String nrp) {
		Mahasiswa mhs = dao.getMhs(nrp);
		dao.deleteMhs(mhs);
		return "redirect:/ptk/daftarmhs-ptk";
	}
	
	@RequestMapping("/editMhs")
	public String openEditData() {
		return "editdata-mhs";
	}
	
	@RequestMapping("/editDb")
	public String editMhs(@Valid @ModelAttribute("model") Mahasiswa model, BindingResult bind) {
		if(bind.hasErrors()) {
			return "editMhs";
		}
		else {
			dao.editMhs(model);
			return "redirect:/mhs/home-mhs";
		}
	}
	
	@RequestMapping(value="peminjaman-mhs", method=RequestMethod.GET)
	public ModelAndView pinjamPage(@RequestParam("id") String nrp) {
		ModelAndView mav = new ModelAndView("peminjaman-mhs");
		List<Detail> listnya = pinjamdao.getAllPinjamMhs(nrp);
		mav.addObject("pinjam", listnya);
		System.out.println(listnya);
		return mav;
	}
	
}
;