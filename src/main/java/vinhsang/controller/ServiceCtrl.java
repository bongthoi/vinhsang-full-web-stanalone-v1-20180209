package vinhsang.controller;


import java.security.Principal;
import java.util.Date;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.UriComponentsBuilder;

import vinhsang.domain.Service;
import vinhsang.domain.ServicesLang;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.layout.support.web.PageWrapper;
import vinhsang.service.ILang;
import vinhsang.service.IService;


@Controller
public class ServiceCtrl {

	@Autowired
	private IService iServiceImpl;
	
	@Autowired
	private ILang iLangImpl;
	
	@RequestMapping(value="admin/services")
	public String IndexCtr(Model model,@RequestParam(value="name",required=false,defaultValue="") String name,
													@RequestParam(value="page",required=false,defaultValue="1") int p){
		if(p==0){
			p=1;
		}
		UriComponentsBuilder  uri=UriComponentsBuilder.fromPath("admin/services").queryParam("name", name);
		PageRequest pageRequest=new  PageRequest(p-1, PageWrapper.MAX_PAGE_ITEM_DISPLAY, Direction.DESC,"id");
		Page<Service> s=iServiceImpl.findByName(name,pageRequest);
		
		PageWrapper<Service> page = new PageWrapper<Service>(s, uri.build().toString());
		model.addAttribute("headTitle", "Services");
		 model.addAttribute("services", page.getContent());
		 model.addAttribute("page", page);
		return "admin/services/list";
	}
	@RequestMapping(value="admin/services/add")
	public String Add(Model model){
		model.addAttribute("headTitle", "Add new Services");
		model.addAttribute("h1", "Add item");
		model.addAttribute("servicesLang", new ServicesLang());
		return "admin/services/form";
	}
	@RequestMapping(value="admin/services/edit/{id}")
	public String Edit(Model model,@PathVariable(value="id") int id,Locale locale){
		String lang= locale.toString();
		Service service=iServiceImpl.findById(id);
		ServicesLang serviceLang=iServiceImpl.getServicesLangByServiceIdAndLangId(id,lang);
			if(service!=null){
				if(null == serviceLang){
					serviceLang=new ServicesLang();
					serviceLang.setService(service);
				}
					//System.out.println(" not null");
					model.addAttribute("headTitle", "Edit Services");
					model.addAttribute("h1", "Edit item");
					model.addAttribute("servicesLang", serviceLang);
					return "admin/services/form";
			}else{
				
				
				  return "redirect:/admin/services/add";
			}
		
	}
	@PostMapping(value="admin/services/save")
	public String Save(@Valid ServicesLang servicesLang,BindingResult result, RedirectAttributes ra,Locale locale,Principal user){
		
		  if (result.hasErrors()) {
  	        return "admin/services/form";
		  }
		  try{
			  Service service=iServiceImpl.findById(servicesLang.getService().getId());
			  if(service!=null){
			
				  		//edit
				  		service.setName(servicesLang.getService().getName());
				  		service.setImage(servicesLang.getService().getImage());
				  		service.setBackground_image(servicesLang.getService().getBackground_image());
				  		servicesLang.setService(service);
				  		//System.out.println("update");
			  }else{
					//insert
			  	    int i1 = 1;
			  	    byte b1 = (byte) i1;
			  		Service ser=servicesLang.getService();
			  		ser.setCreator(user.getName());
			  		ser.setEnabled(b1);
			  		ser.setCreateDate(new Date());
			  		servicesLang.setService(ser);
			  		//System.out.println("insert");
			  }
			  	
			  	servicesLang.setLanguage(iLangImpl.findById(locale.toString()));
			  	iServiceImpl.save(servicesLang);
	    	    MessageHelper.addSuccessAttribute(ra, "save.success");
	    	  
  	   }catch(Exception ex){
  		   
  		    MessageHelper.addErrorAttribute(ra, "save.fail");
  			throw(ex);
	    	   
  	   }
  	   return "redirect:/admin/services";
	}
	
	@PostMapping(value="admin/services/active")
	public String active(@RequestParam(value="arr_id") int[] arr_id,RedirectAttributes ra){
		try{
			  	
			  	iServiceImpl.active(arr_id);
	    	    MessageHelper.addSuccessAttribute(ra, "active.success");
	    	  
  	   }catch(Exception ex){
  		   
  		    MessageHelper.addErrorAttribute(ra, "active.fail");
  			throw(ex);
	    	   
  	   }
  	   return "redirect:/admin/services";
	}
	@PostMapping(value="admin/services/disabled")
	public String disabled(@RequestParam(value="arr_id") int[] arr_id,RedirectAttributes ra){
		try{
			  	
			  	iServiceImpl.disabled(arr_id);
	    	    MessageHelper.addSuccessAttribute(ra, "disabled.success");
	    	  
  	   }catch(Exception ex){
  		   
  		    MessageHelper.addErrorAttribute(ra, "disabled.fail");
  			throw(ex);
	    	   
  	   }
  	   return "redirect:/admin/services";
	}
	
	@PostMapping(value="admin/services/delete")
	public String delete(@RequestParam(value="arr_id") int[] arr_id,RedirectAttributes ra){
		try{
			  	
			  	iServiceImpl.delete(arr_id);
	    	    MessageHelper.addSuccessAttribute(ra, "delete.success");
	    	  
  	   }catch(Exception ex){
  		   
  		    MessageHelper.addErrorAttribute(ra, "delete.fail");
  			throw(ex);
	    	   
  	   }
  	   return "redirect:/admin/services";
	}
	
	
}
