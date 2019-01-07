package vinhsang.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vinhsang.service.IContact;




@Controller
public class ContactCtrl {

	@Autowired
	private IContact icontactImp;
	
	@RequestMapping(value="admin/contacts")
    public String getContacts(Model model) {
		
		

		
		model.addAttribute("contacts",icontactImp.findAll());
		model.addAttribute("headTitle", "Contacts");
        return "admin/contacts/list";
    }
	
	@GetMapping("admin/contact/delete/{id}")
	public String deleteContact(Model model,@PathVariable("id") int id,RedirectAttributes redirect){
		
		icontactImp.delete(id);
		return "redirect:/admin/contacts";
	}
	 
}