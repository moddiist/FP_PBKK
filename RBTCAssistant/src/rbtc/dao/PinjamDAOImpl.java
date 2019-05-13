package rbtc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rbtc.model.Detail;
import rbtc.model.Peminjaman;

@Repository
public class PinjamDAOImpl implements PinjamDAO {
	
	@Autowired
	private SessionFactory s;
	
	
	@Transactional
	@Override
	public void savePinjam(Peminjaman pinjam) {
		Session session = s.getCurrentSession();
		session.save(pinjam);
	}
	
	@Transactional
	@Override
	public List<Detail> getAllPinjamMhs(String nrp){
		Session session = s.getCurrentSession();
		String sql = "SELECT peminjaman.*, buku.judul FROM peminjaman, buku where peminjaman.isbn = buku.isbn and peminjaman.nrp = '" + nrp + "'";
		List<Detail> pinjams = session.createSQLQuery(sql).list();
		return pinjams;
	}
	
}
