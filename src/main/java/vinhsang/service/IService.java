package vinhsang.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;





import vinhsang.domain.Service;
import vinhsang.domain.ServicesLang;

public interface IService {
	Page<Service> findByName(String name,Pageable pageable);

	void save(ServicesLang servicesLang);

	ServicesLang getServicesLangById(int id);

	Service findById(int id);

	ServicesLang getServicesLangByServiceIdAndLangId(int service_id, String lang);

	void active(int[] arr_id);

	void disabled(int[] arr_id);

	void delete(int[] arr_id);

	Page<ServicesLang> findByLangClient(Pageable pageable, String string);
}
