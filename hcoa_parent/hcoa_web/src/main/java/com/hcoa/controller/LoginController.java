package com.hcoa.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hcoa.entity.StaffInfo;
import com.hcoa.service.LoginService;
import com.hcoa.utils.ResponseJson;

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
	
	@RequestMapping("/getUserObj")
	@ResponseBody
	public ResponseJson getUserObj(HttpSession sesiion,HttpServletResponse response){
		ResponseJson json = new ResponseJson();
		Map<String , Object> map = new HashMap<String, Object>();
		map.put("userObj", sesiion.getAttribute("staff"));
		json.setDatas(map);
		json.setMsg("加载登录用户成功");
		json.setCode(1l);
		System.err.println("===============");
		//System.err.println(JsonUtils.objectToJson(json));
		return json;
	}
	
}
