package vinhsang.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import vinhsang.domain.Service;

public interface Testrepo extends JpaRepository<Service ,String> {
	
	@Query(value="select services.* from services",nativeQuery=true)
	public List<Object> gettest1();
}
