package vinhsang.service;

import java.util.List;

import vinhsang.domain.Role;

public interface RoleService {
		Iterable<Role> findAll();

	    List<Role> search(String q);

	    Role findOne(int id);

	    void save(Role Role);

	    void delete(int id);
}
