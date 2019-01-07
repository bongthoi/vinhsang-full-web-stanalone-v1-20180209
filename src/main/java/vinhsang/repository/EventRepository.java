package vinhsang.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vinhsang.domain.Event;


public interface EventRepository extends CrudRepository<Event, Integer>  {

	 @Query("SELECT t FROM Event t where lower(t.name) like %:p_name%")//only work with Named query ,not native query
		Page<Event> findByName(@Param("p_name") String name,Pageable pageable);
	 
	 @Modifying
		@Query("UPDATE Event t set t.enabled=1 where t.id=:id")
		int active(@Param(value="id") int id);

		@Modifying
		@Query("UPDATE Event t set t.enabled=0 where t.id=:id")
		int disabled(@Param(value="id") int id);
}
