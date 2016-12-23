package limky.co.kr.controller;

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
public class WebController {
	
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/jsp", method = RequestMethod.GET)
	public String RequestJspController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/jsp 컨트롤러");
	
		
		return "jsp";
	}
	
	
	@RequestMapping(value = "/spring", method = RequestMethod.GET)
	public String RequestSpringController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/spring 컨트롤러");
	
		
		return "spring";
	}
	

	@RequestMapping(value = "/js-jquery", method = RequestMethod.GET)
	public String RequestScriptController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/js-jquery 컨트롤러");
	
		
		return "js-jquery";
	}
	
	
	@RequestMapping(value = "/node.js", method = RequestMethod.GET)
	public String RequestNodeController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/node.js 컨트롤러");
	
		
		return "node.js";
	}
	
	
	
	
}
