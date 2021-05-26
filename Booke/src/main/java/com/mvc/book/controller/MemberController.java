package com.mvc.book.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.book.model.biz.MemberBiz;
import com.mvc.book.model.dto.MemberDto;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberBiz mbiz;
	
	
	// 로그인 & 세션 생성
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberDto dto, HttpServletRequest request) {
		logger.info("LOGIN");
		
		//세션 생성
		HttpSession session = request.getSession();
		//로그인 한 사람 정보
		MemberDto user = mbiz.login(dto);
		
		if(user != null) {
			//로그인 정보가 맞다면
			//세션 생성
			session.setAttribute("user", user);
			session.setMaxInactiveInterval(3600);
			
			return "redirect:main.do";
			
		}else {
			//로그인 실패
			session.setAttribute("user", null);
			return "redirect:loginform.do";
		}
	}

	// 로그아웃
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("LOGOUT");
		
		mbiz.logout(session);
		
		return "redirect:welcome.do";
	}




}
