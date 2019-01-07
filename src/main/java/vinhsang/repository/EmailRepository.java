package vinhsang.repository;

import org.springframework.data.repository.CrudRepository;

import vinhsang.domain.Emailfeedback;

public interface EmailRepository extends CrudRepository<Emailfeedback,Integer> {

}
