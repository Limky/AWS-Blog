package com.spring.limky.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.type.IntegerTypeHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.limky.model.Board;
import com.spring.limky.service.CmsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CmsController {
	private Board board = new Board();
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	@Autowired
    CmsService cmsService;
	
     /*
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cms", method = RequestMethod.GET)
	public String RequestAwsController(Locale locale,HttpSession session, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/cms 컨트롤러");
	
		String success_id = (String)session.getAttribute("loginCheck");
	
		System.out.println("TEST:"+success_id);
		if(success_id == null)return "home";
	
		if(success_id.equals("Limky_")){
			return "cms";
		}
		
		return "home";
		
	}
	
	@RequestMapping(value = "/insertscrap", method = RequestMethod.POST)
	public String RequestInsertScrapController(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		

	//	board.setDate("2017-17-17-14:14");
		board.setTitle(request.getParameter("title"));
		board.setSubject(request.getParameter("subject"));
		board.setContents(request.getParameter("contents"));
	

		System.out.println("Title:"+board.getTitle()+"\n Subject:"+board.getSubject()+"\n Contents:"+board.getContents());
		
		
		cmsService.insertScrapService(board);
		
		System.out.println("/insertscrap 컨트롤러");
		
	
		
		return "cms";
	}
	
	
	@RequestMapping(value = "/modifyscrap", method = RequestMethod.POST)
	public String RequestModifyScrapController(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome RequestModifyScrapController.", locale);

		board = cmsService.modifyScrapService(request.getParameter("pk"));
		System.out.println("야미"+request.getParameter("pk"));
		System.out.println(board.toString());
			
		model.addAttribute("modifiedBoard",board);
		
		
		return "editcms";
	}
	
	
	
	@RequestMapping(value = "/updateboard", method = RequestMethod.POST)
	public String RequestUpdateBoardController(Locale locale, Model model, HttpServletRequest request) {
		logger.info("Welcome RequestModifyScrapController.", locale);

		Calendar calendar = Calendar.getInstance();
		java.util.Date date = calendar.getTime();
		String today = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date));
		
		board.setNum(Integer.parseInt(request.getParameter("pk")));
		board.setDate(today);
		board.setTitle(request.getParameter("title"));
		board.setSubject(request.getParameter("subject"));
		board.setContents(request.getParameter("contents"));
	
		System.out.println(board.toString());
		
		 cmsService.updateBoardService(board);

		return "redirect:/"+board.getSubject();
	}
	

}
