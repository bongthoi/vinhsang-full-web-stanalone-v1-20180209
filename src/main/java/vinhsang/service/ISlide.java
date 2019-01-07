package vinhsang.service;



import vinhsang.domain.Slide;


public interface ISlide {

	Iterable<Slide> findAll();

	Slide findOne(int id);

    void save(Slide slide);

    void delete(int id);
}
