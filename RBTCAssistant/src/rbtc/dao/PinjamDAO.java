package rbtc.dao;

import java.util.List;

import rbtc.model.Detail;
import rbtc.model.Peminjaman;

public interface PinjamDAO {

	public void savePinjam(Peminjaman pinjam);
	public List<Detail> getAllPinjamMhs(String nrp);
}
