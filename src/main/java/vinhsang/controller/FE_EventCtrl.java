package vinhsang.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriComponentsBuilder;

import vinhsang.domain.Event;
import vinhsang.domain.EventsLang;
import vinhsang.layout.support.web.PageWrapper;
import vinhsang.service.IEventImpl;
import vinhsang.service.ILang;


@Controller
public class FE_EventCtrl {

	@Autowired
	private IEventImpl iEventImpl;
	
	@Autowired
	private ILang iLangImpl;
	
	@RequestMapping("/events")
    public String getServices(Model model,Locale locale,@RequestParam(value="page",required=false,defaultValue="1") int p) {
		
		if(p==0){
			p=1;
		}
		UriComponentsBuilder  uri=UriComponentsBuilder.fromPath("events");
		PageRequest pageRequest=new  PageRequest(p-1, PageWrapper.MAX_PAGE_ITEM_DISPLAY, Direction.DESC,"id");
    	Page<EventsLang> eventpage=iEventImpl.findByLangClient(pageRequest, locale.toString());
		PageWrapper<EventsLang> page = new PageWrapper<EventsLang>(eventpage, uri.build().toString());
    	//model.addAttribute("lang", locale.toString());
    	model.addAttribute("page",page);
    	model.addAttribute("events",page.getContent());
    	
    	model.addAttribute("headTitle", "layout.title.events");
        return "client/events/list";
    }
	
	@GetMapping(value="/event/{id}/detail")
	public String detailEvent(@PathVariable int id,Model model,Locale locale){
		EventsLang elang=iEventImpl.getEventsLangByEventIdAndLangId(id, locale.toString());
		PageWrapper page=new PageWrapper();
		page.setUrl("event/"+id+"/detail");
		
		
		model.addAttribute("elang",elang);
		model.addAttribute("page",page);
		model.addAttribute("headTitle", "layout.title.event");
		
		return "client/events/detail";
	}
}
