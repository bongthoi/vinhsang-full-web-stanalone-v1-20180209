package vinhsang.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vinhsang.domain.ServicesLang;
import vinhsang.repository.ServiceRepository;
import vinhsang.repository.ServicesLangRepository;

@Service
public class IServiceImpl implements IService{

	@Autowired
	private ServiceRepository serviceRepository;
	
	@Autowired
	private ServicesLangRepository servicesLangRepository;
	@Override
	public Page<vinhsang.domain.Service> findByName(String name,
			Pageable pageable) {
		// TODO Auto-generated method stub
		return serviceRepository.findByName(name,pageable);
	}
	@Override
	public void save(ServicesLang servicesLang) {
		// TODO Auto-generated method stub
		servicesLangRepository.save(servicesLang);
	}
	@Override
	public ServicesLang getServicesLangById(int id) {
		// TODO Auto-generated method stub
		return servicesLangRepository.findOne(id);
	}
	@Override
	public vinhsang.domain.Service findById(int id) {
		// TODO Auto-generated method stub
		return serviceRepository.findOne(id);
	}
	@Override
	public ServicesLang getServicesLangByServiceIdAndLangId(int service_id,
			String lang) {
		// TODO Auto-generated method stub
		return servicesLangRepository.getServicesLangByServiceIdandLang(service_id, lang);
	}
	@Override
	@Transactional
	public void active(int[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				serviceRepository.active(arr_id[i]);
			}
		}
	}
	@Override
	@Transactional
	public void disabled(int[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				serviceRepository.disabled(arr_id[i]);
			}
		}
	}
	@Override
	@Transactional
	public void delete(int[] arr_id) {
		// TODO Auto-generated method stub
		if(arr_id.length>0){
			for(int i=0;i<arr_id.length;i++){
				serviceRepository.delete(arr_id[i]);
			}
		}
	}
	@Override
	public Page<ServicesLang> findByLangClient(Pageable pageable, String string) {
		// TODO Auto-generated method stub
		return servicesLangRepository.findByLangClient(pageable,string);
	}

}
