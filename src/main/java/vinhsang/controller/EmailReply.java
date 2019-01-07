package vinhsang.controller;

import java.security.Principal;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vinhsang.domain.Contact;
import vinhsang.domain.Emailfeedback;
import vinhsang.domain.User;
import vinhsang.layout.support.web.MailSender;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.service.IContact;
import vinhsang.service.IEmail;
import vinhsang.service.IUser;




@Controller
public class EmailReply {

	
	@Autowired
	private IEmail  iEmailImpl;
	
	@Autowired
	private IContact  iContactImpl;
	
	@Autowired
	private IUser iUserImpl;
	
	@Autowired
	MailSender mailSender;
	
	@RequestMapping(value="admin/emails")
	public String getUsers(Model model){
		
		model.addAttribute("emails", iEmailImpl.findAll());
		return "admin/email/list";
	}
	
	@RequestMapping(value="admin/email/{id}/reply")
	public String Edit(Model model,@PathVariable(value="id") int id,Principal principal){
			Emailfeedback emailfeedback=new Emailfeedback();
			
			
			Contact contact=iContactImpl.findOne(id);
			User user=iUserImpl.findOne(principal.getName());
			
			emailfeedback.setFromEmail(user.getUsername());
			emailfeedback.setUserId(user.getUsername());
			emailfeedback.setToEmail(contact.getEmail());
			emailfeedback.setContactId(contact.getId());
		
			model.addAttribute("emailfeedback", emailfeedback);
			model.addAttribute("headTitle", "Mail Form");
			model.addAttribute("h1", "Reply email");
			
			
			return "admin/email/form";
	}
	
	@RequestMapping("admin/email/send")
	public String savaUser(@Valid Emailfeedback emailfeedback,BindingResult result, RedirectAttributes redirect,RedirectAttributes ra,Principal principal){
		if (result.hasErrors()) {
	        return "admin/email/form";
	    }
		
		try{
			
			emailfeedback.setSenddate(new Date());
			
			mailSender.send(emailfeedback.getToEmail(), emailfeedback.getSubject(),emailfeedback.getContent());
			
			iEmailImpl.save(emailfeedback);
			
			MessageHelper.addSuccessAttribute(ra, "save.success");
		}catch(Exception ex){
			MessageHelper.addErrorAttribute(ra, "save.fail");
	  		throw(ex);

		}
		
		return "redirect:/admin/emails";
	}
	
}
