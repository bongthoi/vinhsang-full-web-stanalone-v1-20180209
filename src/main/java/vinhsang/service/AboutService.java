package vinhsang.service;

import vinhsang.domain.About;

public interface AboutService {

	About findByLang(String Lang_id);
    void save(About about);

}
