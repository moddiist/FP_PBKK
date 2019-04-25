package rbtc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pustakawan")
public class Pustakawan {
	@Id
	@Column(name="nip")
	private String nip;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="password")
	private String password;
	
	@Column(name="email")
	private String email;
	
	@Column(name="no_hp")
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
