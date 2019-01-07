package vinhsang.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vinhsang.domain.ServicesLang;


public interface ServicesLangRepository extends CrudRepository<ServicesLang, Integer> {

	@Query("Select b from ServicesLang b where b.service.id=:service_id and b.language.id=:lang")
	public ServicesLang getServicesLangByServiceIdandLang(@Param(value="service_id") int service_id,@Param(value="lang") String lang);
	
	@Modifying
	@Query("Delete from ServicesLang t where t.service.id=:id")
	int deletecustom(@Param(value="id") int id);

	@Query("Select b from ServicesLang b where b.language.id=:lang and b.service.enabled=1")
	public Page<ServicesLang> findByLangClient(Pageable pageable,@Param(value="lang") String lang);
	
}
