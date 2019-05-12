package rbtc.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rbtc.model.Mahasiswa;

@Repository
public class MahasiswaDAOImpl implements MahasiswaDAO {

	@Autowired
	private SessionFactory s;
	
	@Transactional
	@Override
	public void tambahMhs(Mahasiswa mhs) {
		Session session = s.getCurrentSession();
		session.save(mhs);
	}

	@Transactional
	@Override
	public Mahasiswa getMhs(String nrp) {
		Session session = s.getCurrentSession();
		Mahasiswa mhs = session.get(Mahasiswa.class, nrp);
		return mhs;
	}
	
	@Transactional
	@Override
	public void deleteMhs(Mahasiswa mhs) {
		Session session = s.getCurrentSession();
		session.delete(mhs);
	}
}
