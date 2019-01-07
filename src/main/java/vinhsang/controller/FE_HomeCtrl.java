package vinhsang.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriComponentsBuilder;

import vinhsang.domain.Service;
import vinhsang.domain.ServicesLang;
import vinhsang.layout.support.web.PageWrapper;
import vinhsang.service.ILang;
import vinhsang.service.IService;
import vinhsang.service.ISlide;

@Controller
public class FE_HomeCtrl {

	@Autowired
	private IService iServiceImpl;
	
	@Autowired
	private ILang iLangImpl;
	
	@Autowired
	private ISlide  islideImpl;
	
	@Autowired
	private ISlide islideImp;
	
	@RequestMapping(value={"/","home"})
	public String getHome(Model model,Locale locale,@RequestParam(value="page",required=false,defaultValue="1") int p){
		if(p==0){
			p=1;
		}
		UriComponentsBuilder  uri=UriComponentsBuilder.fromPath("home");
		PageRequest pageRequest=new  PageRequest(p-1, PageWrapper.MAX_PAGE_ITEM_DISPLAY, Direction.DESC,"id");
    	Page<ServicesLang> servicepage=iServiceImpl.findByLangClient(pageRequest, locale.toString());
		PageWrapper<ServicesLang> page = new PageWrapper<ServicesLang>(servicepage, uri.build().toString());
    	//model.addAttribute("lang", locale.toString());
    	model.addAttribute("page",page);
    	model.addAttribute("services",page.getContent());
    	model.addAttribute("slides", islideImpl.findAll());
    	model.addAttribute("slides",islideImp.findAll());
    	model.addAttribute("headTitle", "layout.title.home");
		return "client/home/index";
	}
}
