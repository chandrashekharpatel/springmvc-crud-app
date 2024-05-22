package com.mvccheck.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mvccheck.model.Role;
import com.mvccheck.model.User;
import com.mvccheck.service.RoleService;
import com.mvccheck.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
    @Autowired
    private RoleService roleService;
    
	   @RequestMapping("/user")
       public ModelAndView show() {
		   ModelAndView model=new ModelAndView();
		   model.setViewName("create-user");
		   model.addObject("lists", roleService.findAll());   
    	   return model;
       }
	   @RequestMapping("/createUser")
	   public ModelAndView createUser(User user) {
            userService.saveUser(user);
		    return showSuccessPage();
	   }
	   
	   @RequestMapping("/user-list")
	    public ModelAndView showSuccessPage() {
	    	ModelAndView model = new ModelAndView("/user-list");
	        model.addObject("userList", userService.findAll());
	        return model;
	    }
	    @GetMapping("/deleteUser")
	    public ModelAndView deleteUser(int userId) {
	    	userService.deleteUser(userId);
	    	ModelAndView model = new ModelAndView("/user-list");
	        model.addObject("userList", userService.findAll());
	        return model;
	    }
	    @RequestMapping(value = "/searchUser", method = RequestMethod.POST)
	    public ModelAndView searchUser(String queryString) {
	    	List<User> matchedRoles = userService.searchUser(queryString);
	    	ModelAndView model = new ModelAndView("/user-list");
	        model.addObject("userList", matchedRoles);
	        return model;
	    }
	    
	    
	    
	    @RequestMapping(value = "/showUserDetail", method = RequestMethod.GET)
	    public ModelAndView showUserDetail(int userId) {
	    	ModelAndView model = new ModelAndView("/update-user");
	        model.addObject("user", userService.findById(userId));
	        return model;
	    }
	    
	   
	    
	    @PostMapping("/updateUser")
	    public ModelAndView updateUser(@ModelAttribute User user) {
	    	userService.updateUser(user);
	    	ModelAndView model = new ModelAndView("/user-list");
	        model.addObject("userList", userService.findAll());
	        return model;
	    }

	    
}
