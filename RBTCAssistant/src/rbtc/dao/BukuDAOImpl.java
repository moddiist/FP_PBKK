package rbtc.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rbtc.model.Buku;

@Repository
public class BukuDAOImpl implements BukuDAO {

	@Autowired
	private SessionFactory s;
	
	@Transactional
	@Override
	public void tambahBuku(Buku buku) {
		Session session = s.getCurrentSession();
		session.save(buku);
	}
	
	@Transactional
	@Override
	public Buku getBuku(String isbn) {
		Session session = s.getCurrentSession();
		Buku buku = session.get(Buku.class, isbn);
		return buku;
	}
	
	@Transactional
	@Override
	public void deleteBuku(Buku buku) {
		Session session = s.getCurrentSession();
		session.delete(buku);
	}

	@Transactional
	@Override
	public List<Buku> getAllBuku(){
		Session session = s.getCurrentSession();
		List<Buku> buku = session.createQuery("from Buku").list();
		return buku;
	}
	
	@Transactional
	@Override
	public void editStatus(Buku buku) {
		Session session = s.getCurrentSession();
		session.update(buku);
	}
	
	@Transactional
	@Override
	public List<Buku> getSearchBuku(String search){
		Session session = s.getCurrentSession();
		String sql = "from Buku as b where b.judul like '%"+search+"%' or b.pengarang like '%"+search+"%'";
		List<Buku> buku = session.createQuery(sql).list();
		return buku;
	}
}
