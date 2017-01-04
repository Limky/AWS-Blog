package com.spring.limky.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.limky.service.BlogService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MobileController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	

	@Autowired
    BlogService blogService;
	
	@RequestMapping(value = "/android", method = RequestMethod.GET)
	public String RequestAndroidController(Locale locale, Model model) {
		logger.info("Welcome Andorid! The client locale is {}.", locale);
		
		
		System.out.println("/android 컨트롤러");
		model.addAttribute("mAndroid",blogService.getAndroidList());
		
	
		return "android";
	}
	
	
	
	@RequestMapping(value = "/ios", method = RequestMethod.GET)
	public String RequestIosController(Locale locale, Model model) {
		logger.info("Welcome Andorid! The client locale is {}.", locale);
		
		System.out.println("/ios 컨트롤러");
	
		
		return "ios";
	}
		
}
