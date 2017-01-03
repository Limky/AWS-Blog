package com.spring.limky.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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
public class CiController {
	
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/jenkins", method = RequestMethod.GET)
	public String RequestJenkinsController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/jenkins 컨트롤러");
	
		
		return "jenkins";
	}
	

	
}
