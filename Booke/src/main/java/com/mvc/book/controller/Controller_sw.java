package com.mvc.book.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Controller_sw {
	
	private static final Logger logger = LoggerFactory.getLogger(Controller_sw.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/welcome.do")
	public String index() {
		return "welcome";
	}
	
	@RequestMapping("/main.do")
	public String main() {
		return "mainpage";
	}
	
	@RequestMapping("/communityMain.do")
	public String communityMain() {
		return "communityMain";
	}
	
	@RequestMapping("/communityChat.do")
	public String communityChat() {
		return "communityChat";
	}
	
	@RequestMapping("/communityModal.do")
	public String communityModal() {
		return "communityModal";
	}
	
	@RequestMapping("/updatepage.do")
	public String update() {
		return "updatepage";
	}
	
	
}
