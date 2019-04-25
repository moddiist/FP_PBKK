package rbtc.model;

public class Mahasiswa {
	private String nama;
	private String nrp;
	private String email;
	private String nohp;
	private String password;
	
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}
	public String getNrp() {
		return nrp;
	}
	public void setNrp(String nrp) {
		this.nrp = nrp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNohp() {
		return nohp;
	}
	public void setNohp(String nohp) {
		this.nohp = nohp;
	}
	
	public Mahasiswa() {}
	public Mahasiswa(String nama, String nrp, String email, String nohp, String password) {
		super();
		this.nama = nama;
		this.nrp = nrp;
		this.email = email;
		this.nohp = nohp;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Mahasiswa [nama=" + nama + ", nrp=" + nrp + ", email=" + email + ", nohp=" + nohp + ", password="
				+ password + "]";
	}
	
	
	
}
