package vinhsang.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vinhsang.service.ISlide;


@Controller
public class FE_SlideCtrl {
	
	@Autowired
	private ISlide  islideImpl;

	@RequestMapping(value="/slides")
	public String getSlides(Model model){
		
		model.addAttribute("slides", islideImpl.findAll());
		return "client/slides/slideslist";
	}
	
}
