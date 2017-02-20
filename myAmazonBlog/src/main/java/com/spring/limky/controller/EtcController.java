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
public class EtcController {
	
	private static final Logger logger = LoggerFactory.getLogger(EtcController.class);
	
	@Autowired
    BlogService blogService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/etc", method = RequestMethod.GET)
	public String RequestEtcController(Locale locale, Model model) {
		logger.info("Welcome etc! The client locale is {}.", locale);
		
		System.out.println("/etc 컨트롤러");
		model.addAttribute("pageName","etc");
		
		return "etc";
	}
	
	
	@RequestMapping(value = "/kinect", method = RequestMethod.GET)
	public String RequestKinectController(Locale locale, Model model) {
		logger.info("Welcome kinect! The client locale is {}.", locale);
		
		System.out.println("/kinect 컨트롤러");
		model.addAttribute("mKinect",blogService.getList("kinect"));
		
		return "kinect";
	}
	
	
}
