package com.mvccheck.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mvccheck.model.Role;
import com.mvccheck.service.RoleService;

@Controller
@RequestMapping
public class RoleController {
	   private final RoleService roleService;

	    @Autowired
	    public RoleController(RoleService roleService) {
	        this.roleService = roleService;
	    }
//    @GetMapping("/role")
//    public String showForms() {
//        return "create-role";
//    }
//    @PostMapping("/submitForm")
//    public String submitForm(Role role) {
//       roleService.saveRole(role);
//       System.out.println("Line Check :: 29    " +"Role Id:: "+role.getId()+"  ::  Role Name ::  "+role.getName());
//        return "redirect:/success"; // Redirect to a success page
//    }
        @RequestMapping(value="/", method=RequestMethod.GET)    
        public String index() {         
          return "index";    
       }   
	    
	    @GetMapping("/role")
	    public ModelAndView showForm() {
	    	ModelAndView model = new ModelAndView();
	         model.addObject("name", "");
	         model.setViewName("create-role");
	         model.addObject("errorMessage","");
	         model.addObject("showError","hide");
	         return model;
	    }
	    
	    @PostMapping("/createRole")
	    public ModelAndView createRole(Role role) {
	     try {
	    	 if(role.getName().equalsIgnoreCase("")) {
	    		 ModelAndView model = new ModelAndView("/create-role");
		         model.addObject("name", role.getName());
		         model.addObject("errorMessage","Role name can't be blank. Please enter a valid role name");
		         model.addObject("showError","show");
		         return model;
	    	 }else {
	    	 
			         roleService.saveRole(role);
			         return showSuccessPage();
	    	 }
	     }catch(Exception e) {
	    	 ModelAndView model = new ModelAndView("/create-role");
	         model.addObject("name", role.getName());
	         model.addObject("errorMessage","Role name already exists. Please try something else.");
	         model.addObject("showError","show");
	         return model;
	     }
	    
	    }


    @GetMapping("/role-list")
    public ModelAndView showSuccessPage() {
    	ModelAndView model = new ModelAndView("/role-list");
        model.addObject("roleList", roleService.findAll());
        return model;
    }
    @GetMapping("/manage")
    public String manageform() {
    	return "manage";
    }
    
    @GetMapping("/deleteRole")
    public ModelAndView deleteRole(int id) {
    	roleService.deleteRole(id);
    	ModelAndView model = new ModelAndView("/role-list");
        model.addObject("roleList", roleService.findAll());
        return model;
    }
    @RequestMapping(value = "/searchRole", method = RequestMethod.POST)
    public ModelAndView searchRole(String queryString) {
    	List<Role> matchedRoles = roleService.searchRole(queryString);
    	ModelAndView model = new ModelAndView("/role-list");
        model.addObject("roleList", matchedRoles);
        return model;
    }
    
    
    
    @RequestMapping(value = "/showRoleDetail", method = RequestMethod.GET)
    public ModelAndView showRoleDetail(int id) {
    	ModelAndView model = new ModelAndView("/update-role");
        model.addObject("role", roleService.findById(id));
        return model;
    }
    
   
    
    @PostMapping("/updateRole")
    public ModelAndView updateRole(@ModelAttribute Role role) {
    	roleService.updateRole(role);
    	ModelAndView model = new ModelAndView("/role-list");
        model.addObject("roleList", roleService.findAll());
        return model;
    }

}

