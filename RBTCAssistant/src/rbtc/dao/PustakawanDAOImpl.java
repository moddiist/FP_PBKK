package rbtc.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rbtc.model.Pustakawan;

@Repository
public class PustakawanDAOImpl implements PustakawanDAO {
	
	@Autowired
	SessionFactory s;
	
	@Transactional
	@Override
	public void tambahPtk(Pustakawan ptk) {
		Session session = s.getCurrentSession();
		session.save(ptk);
	}
	
	@Transactional
	@Override
	public void editPtk(Pustakawan ptk) {
		Session session = s.getCurrentSession();
		session.update(ptk);
	}
	
	@Transactional
	@Override
	public Pustakawan getPtk(String nip) {
		Session session = s.getCurrentSession();
		Pustakawan ptk = session.get(Pustakawan.class, nip);
		return ptk;
	}
}
