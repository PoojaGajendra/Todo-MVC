package todo.dto;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;
import todo.helper.AES;

@Entity
@Data
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	private String username;
	private String email;
	private String password;
	private String gender;
	private long mobileno;
	private LocalDate dob;

	public String getPassword() {
		// to decrypt the password and get form DB
		return AES.decrypt(password, "123");
	}

	public void setPassword(String password) {
		// to encrypt the password and save in DB
		this.password = AES.encrypt(password, "123");
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = LocalDate.parse(dob);
	}

}
