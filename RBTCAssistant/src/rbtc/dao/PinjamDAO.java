package rbtc.dao;

import java.util.List;

import rbtc.model.Peminjaman;

public interface PinjamDAO {

	public void savePinjam(Peminjaman pinjam);
	public List<Peminjaman> getAllPinjamMhs(String nrp);
	public List<Peminjaman> getAllDaftarPinjam();
	public void updatePinjam(Peminjaman pinjam);
	public Peminjaman getSpesifik(int id);
	
	public List<Peminjaman> getHistoriMhs(String nrp);
	public List<Peminjaman> getHistoriPtk();
	
}
