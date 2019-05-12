package rbtc.dao;

import rbtc.model.Pustakawan;

public interface PustakawanDAO {
	
	public Pustakawan getPtk (String nip);
	public void tambahPtk(Pustakawan ptk);
	public void editPtk(Pustakawan ptk);
}
