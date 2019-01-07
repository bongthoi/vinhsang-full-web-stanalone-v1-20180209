package vinhsang.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vinhsang.layout.support.web.PageWrapper;
import vinhsang.service.AboutService;


@Controller
public class FE_AboutCtrl {

	@Autowired
	private  AboutService aboutService;
	
	@RequestMapping("/about")
	public String getAbout(Model model,Locale locale){
		model.addAttribute("about", aboutService.findByLang(locale.toString()));
		
		PageWrapper<Object> page=new PageWrapper<Object>();
		page.setUrl("about");
		model.addAttribute("page",page);
		model.addAttribute("headTitle", "layout.title.about");
		return "client/about/list";
	}
}
