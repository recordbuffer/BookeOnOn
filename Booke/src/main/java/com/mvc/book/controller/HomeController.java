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
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
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
	
	@RequestMapping("/search.do")
	public String searchm() {
		return "searchpage";
	}
	
	@RequestMapping("/search2.do")
	public String searchm2() {
		return "searchpage2";
	}
	
	//회원 정보 수정 페이지로 이동
	
	@RequestMapping("/updateform.do")
	public String updateform() {
		logger.info("UPDATE MEMBER INFO PAGE");
	
		return "updatepage";
	}
	
}
