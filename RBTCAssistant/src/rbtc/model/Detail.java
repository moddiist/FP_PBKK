package rbtc.model;

public class Detail {
	private int id_peminjaman;
	private String nrp;
	private String isbn;
	private String tgl_pinjam; 
	private String tgl_kembali;
	private String status_peminjaman;
	private int denda;
	private String judul;
	
	public Detail() {}
	
	public Detail(int id_peminjaman, String nrp, String isbn, String tgl_pinjam, String tgl_kembali,
			String status_peminjaman, int denda, String judul) {
		super();
		this.id_peminjaman = id_peminjaman;
		this.nrp = nrp;
		this.isbn = isbn;
		this.tgl_pinjam = tgl_pinjam;
		this.tgl_kembali = tgl_kembali;
		this.status_peminjaman = status_peminjaman;
		this.denda = denda;
		this.judul = judul;
	}

	public int getId_peminjaman() {
		return id_peminjaman;
	}

	public void setId_peminjaman(int id_peminjaman) {
		this.id_peminjaman = id_peminjaman;
	}

	public String getNrp() {
		return nrp;
	}

	public void setNrp(String nrp) {
		this.nrp = nrp;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
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

	public int getDenda() {
		return denda;
	}

	public void setDenda(int denda) {
		this.denda = denda;
	}

	public String getJudul() {
		return judul;
	}

	public void setJudul(String judul) {
		this.judul = judul;
	}

	@Override
	public String toString() {
		return "Detail [id_peminjaman=" + id_peminjaman + ", nrp=" + nrp + ", isbn=" + isbn + ", tgl_pinjam="
				+ tgl_pinjam + ", tgl_kembali=" + tgl_kembali + ", status_peminjaman=" + status_peminjaman + ", denda="
				+ denda + ", judul=" + judul + "]";
	}
	
	
	
	
}
