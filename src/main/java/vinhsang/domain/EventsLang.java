package vinhsang.domain;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;



/**
 * The persistent class for the events_lang database table.
 * 
 */
@Entity
@Table(name="events_lang")
@NamedQuery(name="EventsLang.findAll", query="SELECT e FROM EventsLang e")
public class EventsLang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Lob
	@NotEmpty
	private String content;



	@Lob
	@NotEmpty
	private String description;

	@NotEmpty
	private String title;

	//uni-directional many-to-one association to Event
	@NotNull
	@Valid
	@ManyToOne(fetch=FetchType.EAGER,cascade ={CascadeType.ALL})
	@JoinColumn(name="event_id")
	private Event event;

	//uni-directional many-to-one association to Language
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="lang_id")
	private Language language;

	public EventsLang() {
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

	public Event getEvent() {
		return this.event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	public Language getLanguage() {
		return this.language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

}