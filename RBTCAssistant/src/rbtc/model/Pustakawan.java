package rbtc.model;

public class Pustakawan {
	private String nip;
	private String nama;
	private String password;
	private String email;
	private String nohp;
	public String getNip() {
		return nip;
	}
	public void setNip(String nip) {
		this.nip = nip;
	}
	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	
	public Pustakawan() {}
	public Pustakawan(String nip, String nama, String password, String email, String nohp) {
		super();
		this.nip = nip;
		this.nama = nama;
		this.password = password;
		this.email = email;
		this.nohp = nohp;
	}
	
	@Override
	public String toString() {
		return "Pustakawan [nip=" + nip + ", nama=" + nama + ", password=" + password + ", email=" + email + ", nohp="
				+ nohp + "]";
	}
	
	
	
}
