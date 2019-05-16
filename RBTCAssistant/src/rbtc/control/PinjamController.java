package rbtc.control;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import rbtc.dao.BukuDAO;
import rbtc.dao.PinjamDAO;
import rbtc.model.Buku;
import rbtc.model.Mahasiswa;
import rbtc.model.Peminjaman;

@Controller
@RequestMapping("pinjam")
@SessionAttributes("model")
public class PinjamController {
	
	@Autowired
	PinjamDAO dao;
	
	@Autowired
	BukuDAO bukudao;
	
	
	@RequestMapping(value="prosesPinjam", method=RequestMethod.GET)
	public String prosesPinjam(@RequestParam("id") String isbn, @RequestParam("nrp") String nrp) {
		Peminjaman pinjam = new Peminjaman();
		//ngatur bukunya
		Buku buku = bukudao.getBuku(isbn);
		buku.setStatus("Dipinjam");
		bukudao.editStatus(buku);
		
		//ngatur pinjamnya
		DateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(Calendar.DAY_OF_YEAR, 7);
		
		pinjam.setJudulbuku(buku.getJudul());
		pinjam.setIsbn(isbn);
		pinjam.setStatus_peminjaman("Menunggu");
		pinjam.setTgl_pinjam(d.format(date));
		pinjam.setTgl_kembali(d.format(c.getTime()));
		pinjam.setDenda(0);
		pinjam.setNrp(nrp);
		dao.savePinjam(pinjam);
		return "redirect:/mhs/home-mhs";
	}
}
