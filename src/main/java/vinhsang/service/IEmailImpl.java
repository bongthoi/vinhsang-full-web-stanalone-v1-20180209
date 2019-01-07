package vinhsang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vinhsang.domain.Emailfeedback;
import vinhsang.repository.EmailRepository;

@Service
public class IEmailImpl implements IEmail{

	@Autowired
	private EmailRepository emailRepository;
	
	@Override
	public Iterable<Emailfeedback> findAll() {
		// TODO Auto-generated method stub
		return emailRepository.findAll();
	}

	@Override
	public Emailfeedback findOne(int id) {
		// TODO Auto-generated method stub
		return emailRepository.findOne(id);
	}

	@Override
	public void save(Emailfeedback email) {
		// TODO Auto-generated method stub
		emailRepository.save(email);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		emailRepository.delete(id);
	}

}
