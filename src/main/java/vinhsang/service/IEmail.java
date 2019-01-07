package vinhsang.service;

import vinhsang.domain.Emailfeedback;


public interface IEmail {

	Iterable<Emailfeedback> findAll();

	Emailfeedback findOne(int id);

    void save(Emailfeedback email);

    void delete(int id);
}
