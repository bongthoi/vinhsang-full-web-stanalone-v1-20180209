package vinhsang.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vinhsang.domain.EventsLang;

public interface EventsLangRepository extends CrudRepository<EventsLang, Integer> {

	@Query("Select b from EventsLang b where b.event.id=:event_id and b.language.id=:lang")
	public EventsLang getEventsLangByEventIdandLang(@Param(value="event_id") int event_id,@Param(value="lang") String lang);
	
	@Modifying
	@Query("Delete from EventsLang t where t.event.id=:id")
	int deletecustom(@Param(value="id") int id);

	@Query("Select b from EventsLang b where b.language.id=:lang and b.event.enabled=1")
	public Page<EventsLang> findByLangClient(Pageable pageable,@Param(value="lang") String lang);
}
