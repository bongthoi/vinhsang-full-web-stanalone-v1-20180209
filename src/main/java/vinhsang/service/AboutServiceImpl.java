package vinhsang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vinhsang.domain.About;
import vinhsang.repository.AboutRepository;


@Service
public class AboutServiceImpl implements AboutService{

	 @Autowired 
	 private AboutRepository aboutRepository;
	@Override
	public About findByLang(String Lang_id) {
		// TODO Auto-generated method stub
		return aboutRepository.findByLang(Lang_id);
	}

	@Override
	public void save(About about) {
		// TODO Auto-generated method stub
		aboutRepository.save(about);
	}

}
