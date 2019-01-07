package vinhsang.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vinhsang.domain.Slide;
import vinhsang.repository.SlideRepository;

@Service
public class ISlideImpl implements ISlide{
	
	@Autowired
	private SlideRepository slideRepository;

	@Override
	public Iterable<Slide> findAll() {
		// TODO Auto-generated method stub
		return slideRepository.findAll();
	}

	@Override
	public Slide findOne(int id) {
		// TODO Auto-generated method stub
		return slideRepository.findOne(id);
	}

	@Override
	public void save(Slide slide) {
		// TODO Auto-generated method stub
		slideRepository.save(slide);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		slideRepository.delete(id);
	}

}
