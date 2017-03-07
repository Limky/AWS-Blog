package com.spring.limky.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.limky.model.User;
import com.spring.limky.service.CmsService;
import com.spring.limky.service.LoginService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	private User user = new User();
	
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	@Autowired
    LoginService loginService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String LoginController(Locale locale, HttpSession session ,Model model,HttpServletRequest request) {
		logger.info("Welcome doLogin! The client locale is {}.", locale);
		
		System.out.println("/doLogin 컨트롤러");
	
		System.out.println(request.getParameter("userid"));
		System.out.println(request.getParameter("password"));
		user.setUserid(request.getParameter("userid"));
		user.setPassword(request.getParameter("password"));
		
		Boolean loginCheck = loginService.getUser(user);
		
		if(loginCheck){
			
			String success_id = "Limky_";
			session.setAttribute("loginCheck", success_id);
			return "cms";
			
		}else{
			
			return "home";
		}
		
		

	}
	

	
}
