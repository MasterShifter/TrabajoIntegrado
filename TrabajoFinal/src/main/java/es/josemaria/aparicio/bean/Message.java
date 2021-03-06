package es.josemaria.aparicio.bean;
// default package
// Generated 27-mar-2017 20:38:40 by Hibernate Tools 5.2.1.Final

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Message generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "message", catalog = "bd_planizator")
public class Message implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idMessage", unique = true, nullable = false)
	private int idMessage;
	@ManyToOne
	@JoinColumn(name = "sendedBy_idUser")
	private User user;
	@Column(name = "content", nullable = false, length = 65535)
	private String content;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "message")
	private Set<UserHasMessages> userhasmessageses = new HashSet<UserHasMessages>(0);

	public Message() {
	}

	public Message(int idMessage, String content) {
		this.idMessage = idMessage;
		this.content = content;
	}

	public Message(int idMessage, User user, String content, Set<UserHasMessages> userhasmessageses) {
		this.idMessage = idMessage;
		this.user = user;
		this.content = content;
		this.userhasmessageses = userhasmessageses;
	}


	public int getIdMessage() {
		return this.idMessage;
	}

	public void setIdMessage(int idMessage) {
		this.idMessage = idMessage;
	}


	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Set<UserHasMessages> getUserhasmessageses() {
		return this.userhasmessageses;
	}

	public void setUserhasmessageses(Set<UserHasMessages> userhasmessageses) {
		this.userhasmessageses = userhasmessageses;
	}

}
