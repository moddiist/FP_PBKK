package rbtc.model;

public class Buku {
	private String isbn;
	private String judul;
	private String pengarang;
	private String tahun_terbit;
	private String edisi;
	private String status;
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getJudul() {
		return judul;
	}
	public void setJudul(String judul) {
		this.judul = judul;
	}
	public String getPengarang() {
		return pengarang;
	}
	public void setPengarang(String pengarang) {
		this.pengarang = pengarang;
	}
	public String getTahun_terbit() {
		return tahun_terbit;
	}
	public void setTahun_terbit(String tahun_terbit) {
		this.tahun_terbit = tahun_terbit;
	}
	public String getEdisi() {
		return edisi;
	}
	public void setEdisi(String edisi) {
		this.edisi = edisi;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Buku(String isbn, String judul, String pengarang, String tahun_terbit, String edisi, String status) {
		super();
		this.isbn = isbn;
		this.judul = judul;
		this.pengarang = pengarang;
		this.tahun_terbit = tahun_terbit;
		this.edisi = edisi;
		this.status = status;
	}
	
	public Buku() {}
	
	@Override
	public String toString() {
		return "Buku [isbn=" + isbn + ", judul=" + judul + ", pengarang=" + pengarang + ", tahun_terbit=" + tahun_terbit
				+ ", edisi=" + edisi + ", status=" + status + "]";
	}
	
}
