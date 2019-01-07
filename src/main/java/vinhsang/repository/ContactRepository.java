package vinhsang.repository;


import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vinhsang.domain.Contact;


public interface ContactRepository extends CrudRepository<Contact, Integer> {
	 List<Contact> findByNameContaining(String q);
	    Page<Contact> findAll(Pageable pageable);
	    
	    
	    @Query("select c from Contact c where c.name like %:name% order by c.name asc")
	    Page<Contact> findQuery(@Param("name") String name,Pageable pageable);
   
} 