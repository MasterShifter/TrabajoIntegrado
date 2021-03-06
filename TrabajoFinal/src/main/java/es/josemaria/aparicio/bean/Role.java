package es.josemaria.aparicio.bean;
// default package
// Generated 27-mar-2017 20:38:40 by Hibernate Tools 5.2.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Role generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "role", catalog = "bd_planizator")
public class Role implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idRole", unique = true, nullable = false)
	private Byte idRole;
	@Column(name = "name", nullable = false, length = 45)
	private String name;
	@Column(name = "description", nullable = false, length = 200)
	private String description;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "role")
	private Set<User> users = new HashSet<User>(0);

	public Role() {
	}

	public Role(String name, String description) {
		this.name = name;
		this.description = description;
	}

	public Role(String name, String description, Set<User> users) {
		this.name = name;
		this.description = description;
		this.users = users;
	}

	public Byte getIdRole() {
		return this.idRole;
	}

	public void setIdRole(Byte idRole) {
		this.idRole = idRole;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<User> getUsers() {
		return this.users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

}
