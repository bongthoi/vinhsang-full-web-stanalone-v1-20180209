package vinhsang.controller;

import java.security.Principal;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vinhsang.domain.User;
import vinhsang.layout.support.web.MessageHelper;
import vinhsang.service.IUser;
import vinhsang.service.RoleService;




@Controller
public class UserCtrl {

	@Autowired
	private IUser iUserImpl;
	
	@Autowired
	private RoleService roleServiceImpl;
	
	@RequestMapping(value="admin/users")
	public String getUsers(Model model){
		model.addAttribute("users",iUserImpl.findAll());
		
		return "admin/users/list";
	}
	
	
	@RequestMapping("admin/user/add")
	public String loadForm(Model model){
		
		
  	    User user=new User();
  	    user.setEnabled(true);
  	    
		model.addAttribute("headTitle", "Add new Users");
		model.addAttribute("h1", "Add item");
		model.addAttribute("roles", roleServiceImpl.findAll());
		model.addAttribute("user",user);
		return "admin/users/form";
	}
	
	@RequestMapping("admin/user/save")
	public String savaUser(@Valid User user,BindingResult result, RedirectAttributes redirect,RedirectAttributes ra,Principal principal){
		if (result.hasErrors()) {
	        return "admin/users/form";
	    }
		
		try{
			user.setCreator(principal.getName());
			user.setCreateDate(new Date());
			iUserImpl.save(user);
			MessageHelper.addSuccessAttribute(ra, "save.success");
		}catch(Exception ex){
			MessageHelper.addErrorAttribute(ra, "save.fail");
	  		throw(ex);

		}
		
		return "redirect:/admin/users";
	}
	
	@RequestMapping(value="admin/user/{id}/edit")
	public String Edit(Model model,@PathVariable(value="id") String id){
		User user=iUserImpl.findOne(id);
		if(user!=null){
			model.addAttribute("user", user);
			model.addAttribute("roles", roleServiceImpl.findAll());
			model.addAttribute("headTitle", "Edit users");
			model.addAttribute("h1", "Edit item");
			return "admin/users/form";
			
		}else{
			 return "redirect:/admin/user/add";
		}
		
	}
	
	
	@PostMapping(value="admin/user/active")
	public String active(@RequestParam(value="arr_id") String[] arr_id,RedirectAttributes ra){
		
		try{
		  	
			iUserImpl.active(arr_id);
    	    MessageHelper.addSuccessAttribute(ra, "active.success");
    	  
	   }catch(Exception ex){
		   
		    MessageHelper.addErrorAttribute(ra, "active.fail");
			throw(ex);
    	   
	   }
		 return "redirect:/admin/users";
	}
	@PostMapping(value="admin/user/disabled")
	public String disable(@RequestParam(value="arr_id") String[] arr_id,RedirectAttributes ra){
		
		try{
		  	
			iUserImpl.disabled(arr_id);
    	    MessageHelper.addSuccessAttribute(ra, "disabled.success");
    	  
	   }catch(Exception ex){
		   
		    MessageHelper.addErrorAttribute(ra, "disabled.fail");
			throw(ex);
    	   
	   }
		 return "redirect:/admin/users";
	}
	
	@PostMapping(value="admin/user/delete")
	public String delete(@RequestParam(value="arr_id") String[] arr_id,RedirectAttributes ra){
		
		try{
		  	
			iUserImpl.delete(arr_id);
    	    MessageHelper.addSuccessAttribute(ra, "delete.success");
    	  
	   }catch(Exception ex){
		   
		    MessageHelper.addErrorAttribute(ra, "delete.fail");
			throw(ex);
    	   
	   }
		 return "redirect:/admin/users";
	}
	
}
