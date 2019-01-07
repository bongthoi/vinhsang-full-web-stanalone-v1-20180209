package vinhsang.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;





@Controller
public class VinhsangCtr {

	
	@RequestMapping(value="/admin/xxxx")
	public ModelAndView IndexCtr(){
		ModelAndView mav=new ModelAndView();
		System.out.print("aaaaaaaa");
		mav.setViewName("admin/index");
		return mav;
	}
	/*
	@RequestMapping(value="/role")
	public ModelAndView role(){
		ModelAndView mav=new ModelAndView();
		System.out.print("role");
		mav.addObject("l_role",roleService.findAll());
		mav.setViewName("admin/role");
		return mav;
	}
	@RequestMapping("/role/create")
	public String rolecreate(Model model) {
	    model.addAttribute("role", new Role());
	    return "admin/role";
	}
	@RequestMapping(value="/role/save",method = RequestMethod.POST)
	public String rolesave(@ModelAttribute Role c) {
		roleService.save(c);
	    return "redirect:/role";
	}
	@RequestMapping("/role/{id}/delete")
	public String delete(@PathVariable int id ) {
		roleService.delete(id);
	    return "redirect:/role";
	 }
	@RequestMapping("/role/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		   model.addAttribute("role", roleService.findOne(id));
	    return "admin/role";
	}*/
}
