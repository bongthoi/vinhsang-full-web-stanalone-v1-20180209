package vinhsang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vinhsang.domain.Event;
import vinhsang.domain.EventsLang;
import vinhsang.repository.EventRepository;
import vinhsang.repository.EventsLangRepository;

@Service
public class IEventImpl implements IEvent{

	@Autowired
	private EventRepository eventRepository;
	
	@Autowired
	private EventsLangRepository eventsLangRepository;
	
	
	@Override
	public Page<Event> findByName(String name, Pageable pageable) {
		// TODO Auto-generated method stub
		return eventRepository.findByName(name, pageable);
	}

	@Override
	public Event findById(int id) {
		// TODO Auto-generated method stub
		return eventRepository.findOne(id);
	}

	@Override
	public void save(EventsLang eventsLang) {
		// TODO Auto-generated method stub
		
		eventsLangRepository.save(eventsLang);
	}

	@Override
	public EventsLang getEventsLangByEventIdAndLangId(int event_id, String lang) {
		// TODO Auto-generated method stub
		return eventsLangRepository.getEventsLangByEventIdandLang(event_id, lang);
	}

	@Override
	@Transactional
	public void active(int[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				eventRepository.active(arr_id[i]);
			}
		}
	}

	@Override
	@Transactional
	public void disabled(int[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				eventRepository.disabled(arr_id[i]);
			}
		}
	}

	@Override
	@Transactional
	public void delete(int[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				eventRepository.delete(arr_id[i]);
			}
		}
	}

	public Page<EventsLang> findByLangClient(Pageable pageable,
			String string) {
		// TODO Auto-generated method stub
		
		return eventsLangRepository.findByLangClient(pageable,string);
	}

}
