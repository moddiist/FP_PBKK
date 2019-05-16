package rbtc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="peminjaman")
public class Peminjaman {
	
	@Id
	@Column(name="id_peminjaman")
	private int id_peminjaman;
	
	@Column(name="nrp")
	private String nrp;
	
	@Column(name="isbn")
	private String isbn;
	
	@Column(name="tgl_pinjam")
	private String tgl_pinjam; 
	
	@Column(name="tgl_kembali")
	private String tgl_kembali;
	
	@Column(name="status_peminjaman")
	private String status_peminjaman;
	
	@Column(name="denda")
	private long denda;
	
	@Column(name="judul_buku")
	private String judulbuku;
	
	public Peminjaman() {}

	public Peminjaman(int id_peminjaman, String nrp, String isbn, String tgl_pinjam, String tgl_kembali,
			String status_peminjaman, long denda, String judulbuku) {
		super();
		this.id_peminjaman = id_peminjaman;
		this.nrp = nrp;
		this.isbn = isbn;
		this.tgl_pinjam = tgl_pinjam;
		this.tgl_kembali = tgl_kembali;
		this.status_peminjaman = status_peminjaman;
		this.denda = denda;
		this.judulbuku = judulbuku;
	}

	public String getJudulbuku() {
		return judulbuku;
	}

	public void setJudulbuku(String judulbuku) {
		this.judulbuku = judulbuku;
	}

	public int getId_peminjaman() {
		return id_peminjaman;
	}

	public String getNrp() {
		return nrp;
	}

	public void setNrp(String nrp) {
		this.nrp = nrp;
	}

	public String getTgl_pinjam() {
		return tgl_pinjam;
	}

	public void setTgl_pinjam(String tgl_pinjam) {
		this.tgl_pinjam = tgl_pinjam;
	}

	public String getTgl_kembali() {
		return tgl_kembali;
	}

	public void setTgl_kembali(String tgl_kembali) {
		this.tgl_kembali = tgl_kembali;
	}

	public String getStatus_peminjaman() {
		return status_peminjaman;
	}

	public void setStatus_peminjaman(String status_peminjaman) {
		this.status_peminjaman = status_peminjaman;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public long getDenda() {
		return denda;
	}

	public void setDenda(long denda) {
		this.denda = denda;
	}

	public void setId_peminjaman(int id_peminjaman) {
		this.id_peminjaman = id_peminjaman;
	}

	@Override
	public String toString() {
		return "Peminjaman [id_peminjaman=" + id_peminjaman + ", nrp=" + nrp + ", isbn=" + isbn + ", tgl_pinjam="
				+ tgl_pinjam + ", tgl_kembali=" + tgl_kembali + ", status_peminjaman=" + status_peminjaman + ", denda="
				+ denda + ", judulbuku=" + judulbuku + "]";
	}
	
	
	
	
	
}
