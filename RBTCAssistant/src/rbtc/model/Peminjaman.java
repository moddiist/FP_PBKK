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
	private int denda;
	
	public Peminjaman() {}
	
	public Peminjaman(int id_peminjaman, String isbn, String nrp, String tgl_pinjam, String tgl_kembali, String status_peminjaman, int denda) {
		super();
		this.id_peminjaman = id_peminjaman;
		this.nrp = nrp;
		this.isbn=isbn;
		this.tgl_pinjam = tgl_pinjam;
		this.tgl_kembali = tgl_kembali;
		this.status_peminjaman = status_peminjaman;
		this.denda = denda;
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

	public int getDenda() {
		return denda;
	}

	public void setDenda(int denda) {
		this.denda = denda;
	}

	public void setId_peminjaman(int id_peminjaman) {
		this.id_peminjaman = id_peminjaman;
	}
	
	
	
	
	
}