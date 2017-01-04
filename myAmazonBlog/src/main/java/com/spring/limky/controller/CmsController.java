package com.spring.limky.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.limky.model.Board;
import com.spring.limky.service.InsertService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CmsController {
	private Board board = new Board();
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	@Autowired
    InsertService insertService;
	
     /*
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cms", method = RequestMethod.GET)
	public String RequestAwsController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/cms 컨트롤러");
	
		
		return "cms";
	}
	
	@RequestMapping(value = "/insertscrap", method = RequestMethod.POST)
	public String RequestInsertScrapController(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		

		board.setDate("2017-17-17-14:14");
		board.setTitle(request.getParameter("title"));
		board.setSubject(request.getParameter("subject"));
		board.setContents(request.getParameter("contents"));
	

		System.out.println("Title:"+board.getTitle()+"\n Subject:"+board.getSubject()+"\n Contents:"+board.getContents());
		
		
		insertService.insertScrapService(board);
		
		System.out.println("/insertscrap 컨트롤러");
		
	
		
		return "ios";
	}
	


}
