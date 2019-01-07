package vinhsang.domain;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;


/**
 * The persistent class for the services_lang database table.
 * 
 */
@Entity
@Table(name="services_lang")
@NamedQuery(name="ServicesLang.findAll", query="SELECT s FROM ServicesLang s")
public class ServicesLang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Lob
	private String content;


	@Lob
	@NotEmpty
	private String description;

	@NotEmpty
	private String title;

	//uni-directional many-to-one association to Language
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="lang_id")
	private Language language;

	//uni-directional many-to-one association to Service

	@NotNull
	@Valid
	@ManyToOne(fetch=FetchType.EAGER,cascade ={CascadeType.ALL})
	@JoinColumn(name="services_id")
	private Service service;

	public ServicesLang() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Language getLanguage() {
		return this.language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public Service getService() {
		return this.service;
	}

	public void setService(Service service) {
		this.service = service;
	}

}