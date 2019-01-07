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













import vinhsang.domain.Event;
import vinhsang.domain.EventsLang;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.layout.support.web.PageWrapper;
import vinhsang.service.IEvent;
import vinhsang.service.ILang;



@Controller
public class EventCtrl {

	@Autowired
	private IEvent iEventImpl;
	
	@Autowired
	private ILang iLangImpl;
	
	@RequestMapping(value="admin/events")
	public String IndexCtr(Model model,@RequestParam(value="name",required=false,defaultValue="") String name,
			@RequestParam(value="page",required=false,defaultValue="1") int p){
		if(p==0){
			p=1;
		}
		
		UriComponentsBuilder  uri=UriComponentsBuilder.fromPath("~/admin/events").queryParam("name", name);
		PageRequest pageRequest=new  PageRequest(p-1, PageWrapper.MAX_PAGE_ITEM_DISPLAY, Direction.DESC,"id");
		Page<Event> s=iEventImpl.findByName(name,pageRequest);
		
		PageWrapper<Event> page = new PageWrapper<Event>(s, uri.build().toString());
		model.addAttribute("headTitle", "Events");
		 model.addAttribute("events", page.getContent());
		 model.addAttribute("page", page);
		
		return "admin/events/list";
	}
	
	@RequestMapping(value="admin/events/add")
	public String Add(Model model){
		model.addAttribute("headTitle", "Add new Events");
		model.addAttribute("h1", "Add item");
		model.addAttribute("eventsLang", new EventsLang());
		return "admin/events/form";
	}
	
	@PostMapping(value="admin/events/save")
	public String Save(@Valid EventsLang eventsLang,BindingResult result, RedirectAttributes ra,Locale locale,Principal user){
		if (result.hasErrors()) {
  	        return "admin/events/form";
  	    }
		  
		try{
			Event event=iEventImpl.findById(eventsLang.getEvent().getId());
			if(event!=null){
				event.setName(eventsLang.getEvent().getName());
				event.setImage(eventsLang.getEvent().getImage());
				eventsLang.setEvent(event);
			}else{
				int i1 = 1;
		  	    byte b1 = (byte) i1;
		  	    Event event1=eventsLang.getEvent();
		  	    event1.setCreator(user.getName());
		  	    event1.setEnabled(b1);
		  	    event1.setCreateDate(new Date());
		  	    
		  	    eventsLang.setEvent(event1);
			}
		}catch(Exception ex){
			MessageHelper.addErrorAttribute(ra, "save.fail");
	  		throw(ex);
		}
		eventsLang.setLanguage(iLangImpl.findById(locale.toString()));
	  	iEventImpl.save(eventsLang);
	    MessageHelper.addSuccessAttribute(ra, "save.success");
		
		
  	   return "redirect:/admin/events";
	}
	
	@RequestMapping(value="admin/events/edit/{id}")
	public String Edit(Model model,@PathVariable(value="id") int id,Locale locale){
		String lang=locale.toString();
		Event event=iEventImpl.findById(id);
		EventsLang eventsLang=iEventImpl.getEventsLangByEventIdAndLangId(id,lang);
		if(event!=null){
			if(null == eventsLang ){
				eventsLang=new EventsLang();
				eventsLang.setEvent(event);
			}
			model.addAttribute("headTitle", "Edit events");
			model.addAttribute("h1", "Edit item");
			model.addAttribute("eventsLang", eventsLang);
			return "admin/events/form";
			
		}else{
			 return "redirect:/admin/events/add";
		}
		
	}
	
	@PostMapping(value="admin/events/active")
	public String active(@RequestParam(value="arr_id") int[] arr_id,RedirectAttributes ra){
		
		
		try{
		  	
			iEventImpl.active(arr_id);
    	    MessageHelper.addSuccessAttribute(ra, "active.success");
    	  
	   }catch(Exception ex){
		   
		    MessageHelper.addErrorAttribute(ra, "active.fail");
			throw(ex);
    	   
	   }
		 return "redirect:/admin/events";
	}
	
	@PostMapping(value="admin/events/disabled")
	public String disabled(@RequestParam(value="arr_id") int[] arr_id,RedirectAttributes ra){
		
		
		try{
		  	
			iEventImpl.disabled(arr_id);
    	    MessageHelper.addSuccessAttribute(ra, "disabled.success");
    	  
	   }catch(Exception ex){
		   
		    MessageHelper.addErrorAttribute(ra, "disabled.fail");
			throw(ex);
    	   
	   }
		 return "redirect:/admin/events";
	}
	@PostMapping(value="admin/events/delete")
	public String delete(@RequestParam(value="arr_id") int[] arr_id,RedirectAttributes ra){
		
		try{
				  	
					iEventImpl.delete(arr_id);
		    	    MessageHelper.addSuccessAttribute(ra, "disabled.success");
		    	  
			   }catch(Exception ex){
				   
				    MessageHelper.addErrorAttribute(ra, "disabled.fail");
					throw(ex);
		    	   
			   }
				 return "redirect:/admin/events";
			}
	
}
