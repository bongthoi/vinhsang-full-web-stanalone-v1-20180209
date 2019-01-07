package vinhsang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vinhsang.domain.Language;
import vinhsang.repository.LangRepository;

@Service
public  class ILangImpl implements ILang {

	@Autowired
	LangRepository langRepository;
	
	
	@Override
	public Language findById(String id) {
		// TODO Auto-generated method stub
		return langRepository.findOne(id);
	}
	
	

}
