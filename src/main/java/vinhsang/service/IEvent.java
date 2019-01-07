package vinhsang.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import vinhsang.domain.Event;
import vinhsang.domain.EventsLang;

public interface IEvent  {
	Page<Event> findByName(String name,Pageable pageable);

	Event findById(int id);

	void save(EventsLang eventsLang);

	EventsLang getEventsLangByEventIdAndLangId(int event_id, String lang);

	void active(int[] arr_id);

	void disabled(int[] arr_id);

	void delete(int[] arr_id);
	
	Page<EventsLang> findByLangClient(Pageable pageable, String string);
}
