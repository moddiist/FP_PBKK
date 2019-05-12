package rbtc.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rbtc.model.Pustakawan;

@Repository
public class PustakawanDAOImpl implements PustakawanDAO {
	
	@Autowired
	SessionFactory s;
	
	@Override
	public void tambahPtk(Pustakawan ptk) {
		s.getCurrentSession().save(ptk);
	}
}
