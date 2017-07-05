package com.hcoa.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hcoa.entity.StaffInfo;
import com.hcoa.service.LoginService;

@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	public String toLogin(String username,String password,HttpSession session){
		StaffInfo staff=loginService.getStaff(username,password);
		if(staff==null){
			return "login";
		}
		else{ 
			session.setAttribute("staff", staff); 
		    return "index";
		}
	}

}
