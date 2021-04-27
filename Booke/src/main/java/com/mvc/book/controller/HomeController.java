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
	
	//웰컴페이지로 이동
	@RequestMapping("/welcome.do")
	public String index() {
		logger.info("WELCOME PAGE");
		
		return "welcome";
	}
	
	
	//메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main() {
		logger.info("MAIN PAGE");
		
		return "mainpage";
	}
	
	//로그인 페이지로 이동
	@RequestMapping("/loginform.do")
	public String loginForm() {
		logger.info("LOGIN FORM");
		
		return "loginpage";
	}
	
	//회원가입 페이지로 이동
	@RequestMapping("/signup.do")
	public String signupform() {
		logger.info("SIGN UP FORM");
		
		return "signuppage";
	}
	
	//회원가입_아이디 중복 체크 페이지로 이동
	@RequestMapping(value="/idChk.do")
	public String signup_idChk() {
		logger.info("SIGNUP ID CHECK POP UP");
		
		return "signuppage_idchk";
	}
	
	//회원 정보 수정 페이지로 이동
	@RequestMapping("/updateform.do")
	public String updateform() {
		logger.info("UPDATE MEMBER INFO PAGE");
	
		return "updatepage";
	}
	
	//친구관리 페이지로 이동
	@RequestMapping("/friend.do")
	public String friend() {
		logger.info("FRIEND PAGE");
		
		return "friendpage";
	}
	
	
	//친구 관리 페이지 > 검색 결과 페이지로 이동
	@RequestMapping("/fres.do")
	public String fres() {
		logger.info("FRIEND RES PAGE");
		
		return "friendpage_res";
	}
	
	
	
	
}
