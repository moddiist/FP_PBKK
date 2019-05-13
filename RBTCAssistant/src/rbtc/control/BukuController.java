package rbtc.control;

import javax.validation.Valid;
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

import rbtc.dao.BukuDAO;
import rbtc.model.Buku;
import rbtc.model.Mahasiswa;
import rbtc.model.Pustakawan;

@Controller
@RequestMapping("buku")
@SessionAttributes("model")
public class BukuController {
	
	@Autowired
	private BukuDAO dao;
	
	@RequestMapping("/tambahBuku")
	public String tambahBukuPage(Model book) {
		book.addAttribute("buku", new Buku());
		return "tmbh-buku";
	}
	
	@RequestMapping("/insertDb")
	public ModelAndView daftarBaruBuku(@Valid @ModelAttribute("buku") Buku buku, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("tmbh-buku");
			return mav;
		}
		else {
			dao.tambahBuku(buku);
			ModelAndView mav = new ModelAndView("redirect:/ptk/home-ptk");
			return mav;
		}
	}
	
	@RequestMapping(value="deleteBuku", method=RequestMethod.GET)
	public String deleteBuku(@RequestParam("id") String isbn) {
		Buku hapuskan = dao.getBuku(isbn);
		dao.deleteBuku(hapuskan);
		return "redirect:/ptk/home-ptk";
	}
	
	@RequestMapping(value="/editStatus", method=RequestMethod.GET)
	public String editStatusPage(Model buku, @RequestParam("id") String isbn) {
		Buku bukunya = dao.getBuku(isbn);
		buku.addAttribute("statusnya", bukunya);
		return "editstatbuku-ptk";
	}
	
	@RequestMapping("/ubahStat")
	public String editStatBuku(@Valid @ModelAttribute("statusnya") Buku buku,BindingResult bindres) {
		if(bindres.hasErrors()) {
			return "editStatus";
		}
		else {
			dao.editStatus(buku);
			return "redirect:/ptk/home-ptk";
		}
	}
	
}
