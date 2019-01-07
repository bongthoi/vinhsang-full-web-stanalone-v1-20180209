package vinhsang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vinhsang.domain.Role;
import vinhsang.repository.RoleRepository;

@Service
public class RoleServiceImpl implements  RoleService{

	  @Autowired 
	  private RoleRepository roleRepository;
	   
	@Override
	public Iterable<Role> findAll() {
		// TODO Auto-generated method stub
		  return roleRepository.findAll();
	}

	@Override
	public List<Role> search(String q) {
		// TODO Auto-generated method stub
		return roleRepository.findByNameContaining(q);
	}

	@Override
	public Role findOne(int id) {
		// TODO Auto-generated method stub
		return roleRepository.findOne(id);
	}

	@Override
	public void save(Role Role) {
		// TODO Auto-generated method stub
		roleRepository.save(Role);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		roleRepository.delete(id);
		
	}

}
