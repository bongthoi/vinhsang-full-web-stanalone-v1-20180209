package vinhsang.service;

import java.util.List;

import vinhsang.domain.User;

public interface IUser {

	Iterable<User> findAll();
	List<User> findByNameContaining(String q);
	User findOne(String username);
	void save(User user);
	void delete(String username);
	
	void active(String[] arr_id);

	void disabled(String[] arr_id);

	void delete(String[] arr_id);
}
