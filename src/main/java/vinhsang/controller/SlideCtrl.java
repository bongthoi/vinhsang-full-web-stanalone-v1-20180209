package vinhsang.controller;
import java.security.Principal;
import java.util.Date;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;




import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import vinhsang.domain.Slide;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.service.ISlide;

@Controller
public class SlideCtrl {

	@Autowired
	private ISlide ISlideImpl;
	
	@RequestMapping(value="admin/slides")
	public String IndexCtr(Model model){
		model.addAttribute("slides",ISlideImpl.findAll());
		
		return "admin/slides/list";
		
	}
	
	@GetMapping("admin/slide/create")
    public String create(Model model) {
		
        model.addAttribute("slide", new Slide());
        return "admin/slides/form";
    }
	
	@PostMapping("admin/slide/save")
    public String save(@Valid Slide slide, BindingResult result, RedirectAttributes redirect,RedirectAttributes ra,Principal user) {
		 if (result.hasErrors()) {
		        return "admin/slides/form";
		    }
		 
		 slide.setCreateDate(new Date());
		 slide.setCreator(user.getName());
		 ISlideImpl.save(slide);
		 MessageHelper.addSuccessAttribute(ra, "save.success");
        //model.addAttribute("slide", new Slide());
        return "redirect:/admin/slides";
    }
	
	@GetMapping("/admin/slide/{id}/edit")
	public String Edit(Model model,@PathVariable(value="id") int id){

		model.addAttribute("slide", ISlideImpl.findOne(id));
		//model.addAttribute("slide", new Slide());
	    return "admin/slides/form";
		
	}
	
	@GetMapping(value="admin/slide/{id}/delete")
	public String Delete(Model model,@PathVariable(value="id") int id,RedirectAttributes ra){
		
		ISlideImpl.delete(id);
		 MessageHelper.addSuccessAttribute(ra, "delete.success");
		return "redirect:/admin/slides";
	}
}
