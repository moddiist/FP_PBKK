package rbtc.dao;

import java.util.List;

import rbtc.model.Buku;

public interface BukuDAO {

	public void tambahBuku(Buku buku);
	public Buku getBuku (String isbn);
	public void deleteBuku(Buku buku);
	public List<Buku> getAllBuku();
}
