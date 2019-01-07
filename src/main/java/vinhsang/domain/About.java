package vinhsang.domain;

import java.io.Serializable;

import javax.persistence.*;



import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;


/**
 * The persistent class for the about database table.
 * 
 */
@Entity
@NamedQuery(name="About.findAll", query="SELECT a FROM About a")
public class About implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="create_date")
	@DateTimeFormat (pattern="yyyy-MM-dd HH:mm:ss")
	private Date createDate;

	private String creator;

	
	@NotEmpty
	@Lob
	private String description;

	@Column(name="lang_id")
	private String langId;

	private String logo;

	@NotEmpty
	private String title;
	
	@Lob
	private String content;
	
	public About() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreator() {
		return this.creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLangId() {
		return this.langId;
	}

	public void setLangId(String langId) {
		this.langId = langId;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "About [id=" + id + ", createDate=" + createDate + ", creator="
				+ creator + ", description=" + description + ", langId="
				+ langId + ", logo=" + logo + ", title=" + title + ", content="
				+ content + "]";
	}


}