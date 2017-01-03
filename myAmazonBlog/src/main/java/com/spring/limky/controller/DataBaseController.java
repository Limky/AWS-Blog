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
public class DataBaseController {
	
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/mysql", method = RequestMethod.GET)
	public String RequestMysqlController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/mysql ��Ʈ�ѷ�");
	
		
		return "mysql";
	}
	
	@RequestMapping(value = "/database", method = RequestMethod.GET)
	public String RequestDataBasesqlController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/database ��Ʈ�ѷ�");
	
		
		return "database";
	}
	

	

	
}
