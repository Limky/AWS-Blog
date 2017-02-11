package com.spring.limky.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.limky.model.Board;
import com.spring.limky.service.BlogService;
import com.spring.limky.service.LatestRecordService;

 

 
@Controller
public class BlogDefualtController {
     
	private static final Logger logger = LoggerFactory.getLogger(BlogDefualtController.class);
	
    @Autowired
    BlogService blogService;
    
    @Autowired
    LatestRecordService latestRecordService;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("pageName","home");
		latestRecordService.getLatestRecordList();
		//최근글 3개 가져오기
		List<Board> latestRecord = latestRecordService.getLatestRecordList();
		model.addAttribute("latestRecord",latestRecord);
		
		
		return "home";
	}
    
	

	
   
}
