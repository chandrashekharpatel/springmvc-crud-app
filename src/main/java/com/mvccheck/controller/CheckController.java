package com.mvccheck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckController {
    @RequestMapping("/contacts")
	public String displayss() {
    	System.out.println("Line ::10");
		return "contacts";
	}
}
