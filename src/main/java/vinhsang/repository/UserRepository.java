package vinhsang.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vinhsang.domain.User;

public interface UserRepository extends CrudRepository<User, String>{

	List<User> findByNameContaining(String q);
	
	 @Modifying
		@Query("UPDATE User t set t.enabled=true where t.username=:id")
		int active(@Param(value="id") String id);

		@Modifying
		@Query("UPDATE User t set t.enabled=false where t.username=:id")
		int disabled(@Param(value="id") String id);
}
