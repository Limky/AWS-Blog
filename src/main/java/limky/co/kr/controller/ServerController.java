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
public class ServerController {
	
	private static final Logger logger = LoggerFactory.getLogger(ServerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/aws", method = RequestMethod.GET)
	public String RequestAwsController(Locale locale, Model model) {
		logger.info("Welcome aws! The client locale is {}.", locale);
		
		System.out.println("/aws ��Ʈ�ѷ�");
		model.addAttribute("pageName","server");
		
		
		return "aws";
	}
	
	
	@RequestMapping(value = "/linux", method = RequestMethod.GET)
	public String RequestLinuxController(Locale locale, Model model) {
		logger.info("Welcome linux! The client locale is {}.", locale);
		
		System.out.println("/linux ��Ʈ�ѷ�");
		model.addAttribute("pageName","server");
		
		return "linux";
	}
	
	
}