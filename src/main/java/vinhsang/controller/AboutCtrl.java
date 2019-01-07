package vinhsang.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vinhsang.domain.About;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.service.AboutService;

@Controller
public class AboutCtrl {
    @Autowired
   private  AboutService aboutService;
    
	    @RequestMapping(value = {"admin/about"}, method = RequestMethod.GET)
	    public ModelAndView index(Locale locale) {
		 ModelAndView mav=new ModelAndView();
		mav.addObject("headTitle", "About");
		//mav.addObject("about",new About() );
		//System.out.println(aboutService.findByLang(locale.toString()).toString());
		mav.addObject("about",aboutService.findByLang(locale.toString()) );
		mav.setViewName("admin/about/about");
	        return mav;
	    }
	    @PostMapping("admin/about/save")
	    public String save(@Valid @ModelAttribute About about, BindingResult result, RedirectAttributes ra){
	    	   if (result.hasErrors()) {
	    	        return "admin/about/about";
	    	    }
	    	   try{
	    		  	aboutService.save(about);
		    	    MessageHelper.addSuccessAttribute(ra, "save.success");
		    	  
	    	   }catch(Exception ex){
	    		    MessageHelper.addSuccessAttribute(ra, "save.fail");
		    	   
	    	   }
	    	   return "redirect:/admin/about";
	    }
}
