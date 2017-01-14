package com.spring.limky.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String LoginController(Locale locale, Model model,HttpServletRequest request) {
		logger.info("Welcome doLogin! The client locale is {}.", locale);
		
		System.out.println("/doLogin 컨트롤러");
	
		System.out.println(request.getParameter("userid"));
		System.out.println(request.getParameter("password"));
		return "algorithm";
	}
	

	
}
