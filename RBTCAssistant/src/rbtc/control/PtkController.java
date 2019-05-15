package rbtc.control;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import rbtc.dao.BukuDAO;
import rbtc.dao.MahasiswaDAO;
import rbtc.dao.PinjamDAO;
import rbtc.dao.PustakawanDAO;
import rbtc.model.Buku;
import rbtc.model.Mahasiswa;
import rbtc.model.Peminjaman;
import rbtc.model.Pustakawan;
import rbtc.model.Status;

@Controller
@RequestMapping("ptk")
@SessionAttributes("model")
public class PtkController {
	@Autowired
	private PustakawanDAO dao;
	
	@Autowired
	private MahasiswaDAO mhsdao;
	
	@Autowired
	private BukuDAO bukudao;
	
	@Autowired
	private PinjamDAO pinjamdao;
	
	@RequestMapping("/home-ptk")
	public ModelAndView halamanPustakawan() {
		ModelAndView mav = new ModelAndView("logged-pustakawan");
		List<Buku> buku = bukudao.getAllBuku();
		mav.addObject("buku", buku);
		return mav;
	}
	
	//INI NAMPILIN DAFTAR MAHASISWA VIA PUSTAKAWAN
	@RequestMapping("/daftarmhs-ptk")
	public ModelAndView daftarmhsPustakawan() {
		ModelAndView mav = new ModelAndView("daftarmhs-pustakawan");
		List<Mahasiswa> mhs = mhsdao.getAllMhs();
		mav.addObject("mahasiswa", mhs);
		return mav;
	}
	
	@RequestMapping("/tambah-ptk")
	public String tambahPustakawanPage(Model ptk) {
		ptk.addAttribute("ptk", new Pustakawan());
		return "tmbh-pustakawan";
	}
	
	
	//INI BUAT NAMBAH PUSTAKAWAN LAIN
	@RequestMapping("/daftarPustakawan")
	public ModelAndView daftarBaruPtk(@Valid @ModelAttribute("ptk") Pustakawan ptk, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("tambah-ptk");
			return mav;
		}
		else {
			dao.tambahPtk(ptk);
			ModelAndView mav = new ModelAndView("redirect:/ptk/home-ptk");
			return mav;
		}
	}
	
	//INI BUAT NGEDIT DATA PUSTAKAWAN
	@RequestMapping("/editPtk")
	public String editPustakawanPage() {
		return "editdata-ptk";
	}
	
	@RequestMapping("/editDb")
	public String editPtk(@Valid @ModelAttribute("model") Pustakawan model, BindingResult bind) {
		if(bind.hasErrors()) {
			return "redirect:/ptk/editPtk";
		}
		else {
			dao.editPtk(model);
			return "redirect:/ptk/home-ptk";
		}
	}
	
	
	//INI UNTUK NGEDIT" STATUS PEMINJAMAN
	@RequestMapping("/lihatpeminjaman")
	public ModelAndView listPinjamPage() {
		ModelAndView mav = new ModelAndView("peminjaman-ptk");
		List<Peminjaman> pinjams = pinjamdao.getAllDaftarPinjam();
		mav.addObject("pinjam", pinjams);
		return mav;
	}
	
	@RequestMapping(value="statusPinjam", method=RequestMethod.GET)
	public String ubahStatPinjamPage(@RequestParam("id") int id, Model status, Model idpj) {
		status.addAttribute("status", new Status());
		idpj.addAttribute("id", id);
		return "pinjamstat-ptk";
	}
	
	@RequestMapping(value="prosesPinjam", method= {RequestMethod.GET, RequestMethod.POST})
	public String ubahStatPinjam(@Valid @ModelAttribute("status") Status status, @RequestParam("id") int id, BindingResult bind) {
		if(bind.hasErrors()) {
			return "redirect:/ptk/editPtk";
		}
		else {
			Peminjaman pj = pinjamdao.getSpesifik(id);
			//System.out.println(pj);
			//System.out.println(status.getMessage());
			pj.setStatus_peminjaman(status.getMessage());
			pinjamdao.updatePinjam(pj);
			if (status.getMessage().equals("Selesai") || status.getMessage().equals("Ditolak")) {
				Buku buku = bukudao.getBuku(pj.getIsbn());
				buku.setStatus("Tersedia");
				bukudao.editStatus(buku);
			}
			return "redirect:/ptk/lihatpeminjaman";
		}
	}
	
	
	//hehehehehe
	@RequestMapping("/histori-ptk")
	public ModelAndView historiPinjamPage() {
		ModelAndView mav = new ModelAndView("historipinjam-ptk");
		List<Peminjaman> list = pinjamdao.getHistoriPtk();
		mav.addObject("pinjam", list);
		return mav;
	}
}
