package vinhsang.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;



import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vinhsang.domain.Contact;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.layout.support.web.PageWrapper;
import vinhsang.service.IContact;

@Controller
public class FE_ContactCtrl {

	@Autowired
	private IContact icontactImp;
	
	@GetMapping("/contact/create")
    public String create(Model model) {
		
		PageWrapper page=new PageWrapper();
		page.setUrl("contact/create");
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("page",page);
		model.addAttribute("headTitle", "layout.title.contact");
       
        return "client/contact/form";
    }
	
	 @PostMapping("/contact/save")
	    public String save(@Valid Contact contact, BindingResult result, RedirectAttributes ra,Model model) {
		 PageWrapper page=new PageWrapper();
			page.setUrl("contact/create");
		 if (result.hasErrors()) {
			 	model.addAttribute("page",page);
	            return "client/contact/form";
	        }
		 
		 try{
			contact.setCreateDate(new Date());
			 icontactImp.save(contact);
			 
	    	 MessageHelper.addSuccessAttribute(ra, "send.success");
 	   }catch(Exception ex){
 		    MessageHelper.addErrorAttribute(ra, "send.fail");
 			throw(ex);
	    	   
 	   }
		 	model.addAttribute("page",page);
			model.addAttribute("headTitle", "Contact");
	        return "redirect:/contact/create";
	    }
}
