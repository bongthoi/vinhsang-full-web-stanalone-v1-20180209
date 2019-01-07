package vinhsang.domain;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import java.util.Date;


/**
 * The persistent class for the emailfeedback database table.
 * 
 */
@Entity
@NamedQuery(name="Emailfeedback.findAll", query="SELECT e FROM Emailfeedback e")
public class Emailfeedback implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="contact_id")
	private int contactId;

	@Lob
	private String content;

	@NotEmpty
	@Email
	@Column(name="from_email")
	private String fromEmail;

	@Temporal(TemporalType.TIMESTAMP)
	private Date senddate;

	@NotEmpty
	private String subject;

	@NotEmpty
	@Email
	@Column(name="to_email")
	private String toEmail;

	@Column(name="user_id")
	private String userId;

	public Emailfeedback() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getContactId() {
		return this.contactId;
	}

	public void setContactId(int contactId) {
		this.contactId = contactId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFromEmail() {
		return this.fromEmail;
	}

	public void setFromEmail(String fromEmail) {
		this.fromEmail = fromEmail;
	}

	public Date getSenddate() {
		return this.senddate;
	}

	public void setSenddate(Date senddate) {
		this.senddate = senddate;
	}

	public String getSubject() {
		return this.subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getToEmail() {
		return this.toEmail;
	}

	public void setToEmail(String toEmail) {
		this.toEmail = toEmail;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}