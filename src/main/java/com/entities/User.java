package com.entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import com.sun.istack.NotNull;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity(name ="User")
@Table(name="`User`")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id", columnDefinition = "int")
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private int idUser;
	
	@NotNull
	@NotBlank
	@Column(name="username", columnDefinition = "nvarchar(50)")
	private String userName;
	
	@NotNull
	@Column(name="password", columnDefinition = "nvarchar(50)")
	private String password;
	
	@Column(name="salt", columnDefinition = "nvarchar(50)")
	private String salt;
	
	@Email
	@Column(name="email", columnDefinition = "nvarchar(50)")
	private String email;
	
	@Column(name="profile", columnDefinition = "nvarchar(50)")
	private String profile;
	
	
	@OneToMany(mappedBy="user",cascade = CascadeType.ALL)
	private Set<Post> posts;

	@Override
	public String toString() {
		return "User [idUser=" + idUser + ", userName=" + userName + ", password=" + password + ", salt=" + salt
				+ ", email=" + email + ", profile=" + profile + "]";
	}
	
}
