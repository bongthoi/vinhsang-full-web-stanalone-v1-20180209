package vinhsang.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vinhsang.domain.Slide;

public interface SlideRepository extends CrudRepository<Slide, Integer> {
	
	List<Slide> findByNameContaining(String q);
}
