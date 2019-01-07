package vinhsang.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vinhsang.domain.About;


public interface AboutRepository extends CrudRepository<About, String>{


	 @Query("SELECT t FROM About t where t.langId = :lang_id") 
	 About findByLang(@Param("lang_id") String lang_id);
}
