package es.josemaria.aparicio.bean;
// default package
// Generated 27-mar-2017 20:38:40 by Hibernate Tools 5.2.1.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * User generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "user", catalog = "bd_planizator", uniqueConstraints = { @UniqueConstraint(columnNames = "nickname"),
		@UniqueConstraint(columnNames = "email") })
public class User implements java.io.Serializable {

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idUser", unique = true, nullable = false)
	private Integer idUser;
	@ManyToOne
	@JoinColumn(name = "idRole", nullable = false)
	private Role role;
	@ManyToOne
	@JoinColumn(name = "roleSetBy_idUser")
	private User user;
	@Column(name = "nickname", unique = true, nullable = false, length = 45)
	private String nickname;
	@Column(name = "password", nullable = false)
	private byte[] password;
	@Column(name = "email", unique = true, nullable = false, length = 150)
	private String email;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "dateCreated", nullable = false, length = 0)
	private Date dateCreated;
	@Column(name = "loggued")
	private Boolean loggued;
	@Column(name = "name", length = 30)
	private String name;
	@Column(name = "surname", length = 60)
	private String surname;
	@Temporal(TemporalType.DATE)
	@Column(name = "birthdate", length = 0)
	private Date birthdate;
	@Column(name = "photo")
	private byte[] photo;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<UserHasEvents> userhaseventses = new HashSet<UserHasEvents>(0);
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<UserHasMessages> userhasmessageses = new HashSet<UserHasMessages>(0);
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<Message> messages = new HashSet<Message>(0);
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<User> users = new HashSet<User>(0);
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<UsersHasInterests> usershasinterestses = new HashSet<UsersHasInterests>(0);
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "user")
	private Set<Event> events = new HashSet<Event>(0);
	public User() {
	}

	public User(Role role, String nickname, byte[] password, String email, Date dateCreated) {
		this.role = role;
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.dateCreated = dateCreated;
	}

	public User(Role role, User user, String nickname, byte[] password, String email, Date dateCreated, Boolean loggued,
			String name, String surname, Date birthdate, byte[] photo, Set<UserHasEvents> userhaseventses,
			Set<UserHasMessages> userhasmessageses, Set<Message> messages, Set<User> users,
			Set<UsersHasInterests> usershasinterestses, Set<Event> events) {
		this.role = role;
		this.user = user;
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.dateCreated = dateCreated;
		this.loggued = loggued;
		this.name = name;
		this.surname = surname;
		this.birthdate = birthdate;
		this.photo = photo;
		this.userhaseventses = userhaseventses;
		this.userhasmessageses = userhasmessageses;
		this.messages = messages;
		this.users = users;
		this.usershasinterestses = usershasinterestses;
		this.events = events;
	}

	public User(String nickname, byte[] password, String email, Date dateCreated,
			String name, String surname, Date birthdate) {
		this.nickname = nickname;
		this.password = password;
		this.email = email;
		this.dateCreated = dateCreated;
		this.name = name;
		this.surname = surname;
		this.birthdate = birthdate;
	}

	public Integer getIdUser() {
		return this.idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}


	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}


	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}


	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public byte[] getPassword() {
		return this.password;
	}

	public void setPassword(byte[] password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public Date getDateCreated() {
		return this.dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Boolean getLoggued() {
		return this.loggued;
	}

	public void setLoggued(Boolean loggued) {
		this.loggued = loggued;
	}


	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}


	public Date getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}


	public byte[] getPhoto() {
		return this.photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}


	public Set<UserHasEvents> getUserhaseventses() {
		return this.userhaseventses;
	}

	public void setUserhaseventses(Set<UserHasEvents> userhaseventses) {
		this.userhaseventses = userhaseventses;
	}


	public Set<UserHasMessages> getUserhasmessageses() {
		return this.userhasmessageses;
	}

	public void setUserhasmessageses(Set<UserHasMessages> userhasmessageses) {
		this.userhasmessageses = userhasmessageses;
	}


	public Set<Message> getMessages() {
		return this.messages;
	}

	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}


	public Set<User> getUsers() {
		return this.users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}


	public Set<UsersHasInterests> getUsershasinterestses() {
		return this.usershasinterestses;
	}

	public void setUsershasinterestses(Set<UsersHasInterests> usershasinterestses) {
		this.usershasinterestses = usershasinterestses;
	}


	public Set<Event> getEvents() {
		return this.events;
	}

	public void setEvents(Set<Event> events) {
		this.events = events;
	}
	
}
