package vinhsang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vinhsang.domain.User;
import vinhsang.repository.UserRepository;

@Service
public class IUserImpl implements IUser {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public Iterable<User> findAll() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}

	@Override
	public User findOne(String username) {
		// TODO Auto-generated method stub
		return userRepository.findOne(username);
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		userRepository.save(user);
	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub
		userRepository.delete(username);
	}

	@Override
	public List<User> findByNameContaining(String q) {
		// TODO Auto-generated method stub
		return userRepository.findByNameContaining(q);
	}

	@Override
	@Transactional
	public void active(String [] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				userRepository.active(arr_id[i]);
			}
		}
	}

	@Override
	@Transactional
	public void disabled(String [] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				userRepository.disabled(arr_id[i]);
			}
		}
	}

	@Override
	@Transactional
	public void delete(String[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				userRepository.delete(arr_id[i]);
			}
		}
	}

}
