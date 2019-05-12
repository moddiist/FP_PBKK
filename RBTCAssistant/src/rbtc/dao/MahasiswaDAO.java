package rbtc.dao;

import java.util.List;

import rbtc.model.Mahasiswa;

public interface MahasiswaDAO {

	public void tambahMhs(Mahasiswa mhs);
	public Mahasiswa getMhs(String nrp);
	public void deleteMhs(Mahasiswa mhs);
	public List<Mahasiswa> getAllMhs();
	public void editMhs(Mahasiswa mhs);
}
