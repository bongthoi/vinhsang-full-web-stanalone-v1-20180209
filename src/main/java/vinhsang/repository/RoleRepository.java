package vinhsang.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vinhsang.domain.Role;

public interface RoleRepository extends CrudRepository<Role, Integer> {
	
	List<Role> findByNameContaining(String q);
}
