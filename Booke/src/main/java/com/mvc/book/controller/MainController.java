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
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	// [시작 > 메인]
	// 웰컴페이지로 이동
	@RequestMapping("/welcome.do")
	public String index() {
		logger.info("WELCOME PAGE");

		return "welcome";
	}

	// 메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main() {
		logger.info("MAIN PAGE");

		return "mainpage";
	}

	// [회원 로그인]
	// 로그인 페이지로 이동
	@RequestMapping("/loginform.do")
	public String loginForm() {
		logger.info("LOGIN FORM");

		return "loginpage";
	}

	// 회원가입 페이지로 이동
	@RequestMapping("/signup.do")
	public String signupform() {
		logger.info("SIGN UP FORM");

		return "signuppage";
	}

	// 회원가입_아이디 중복 체크 페이지로 이동
	@RequestMapping(value = "/idChk.do")
	public String signup_idChk() {
		logger.info("SIGNUP ID CHECK POP UP");

		return "signuppage_idchk";
	}

	// [메인 페이지]
	// 메인_지도 위치 팝업
	@RequestMapping("/detailmap.do")
	public String detailmap() {
		return "detailmap";
	}

	// 책 소개 페이지로 이동
	@RequestMapping("/bookintro.do")
	public String bookintro() {
		return "bookintro";
	}

	// 책 소개 페이지_팝업 상세 정보
	@RequestMapping("/detailpopup.do")
	public String detailpopup() {
		return "detailpopup";
	}
	
	
	// [ 친구 검색 ]
	// 친구 검색 페이지로 이동
	@RequestMapping("/fsearch.do")
	public String fsearch() {
		logger.info("FRIEND SEARCH PAGE");

		return "fsearchpage";
	}

	// 친구 검색 페이지 > 검색 결과 페이지로 이동
	@RequestMapping("/fres.do")
	public String fres() {
		logger.info("FRIEND SEARCH RES PAGE");

		return "fsearchpage_res";
	}

	
	//[ 쪽지 기능]
	// 쪽지 보내기 
	@RequestMapping("/msg.do")
	public String msg() {
		return "msg";
	}
	
	
	// [ 책 검색 ]
	// 책 검색 페이지로 이동
	@RequestMapping("/bsearch.do")
	public String bsearch() {
		return "bsearchpage";
	}

	// 책 검색 결과 페이지로 이동
	@RequestMapping("/bres.do")
	public String bres() {
		return "bsearchpage_res";
	}

	// [ 서재 ]
	// 서재 페이지로 이동
	@RequestMapping("/bcase.do")
	public String bcase() {
		return "bookcase";
	}

	

	// 서재 페이지_캘린더로 이동
	@RequestMapping("/bcaseCal.do")
	public String bcaseCal() {
		return "bookcase_cal";
	}

	// [설정]
	// 설정 페이지로 이동
	@RequestMapping("/setting.do")
	public String setting() {
		return "setting";
	}

	// 회원 정보 수정 페이지로 이동
	@RequestMapping("/updateform.do")
	public String updateform() {
		logger.info("UPDATE MEMBER INFO PAGE");

		return "updatepage";
	}

	// 회원 탈퇴 페이지로 이동
	@RequestMapping("/md_aks.do")
	public String mdelete() {
		logger.info("MEMBER DELETE PAGE");

		return "mdeletepage";
	}

	// 회원 탈퇴 확인 페이지로 이동
	@RequestMapping(value = "/deleteChk.do")
	public String mdelete_Chk() {
		logger.info("MEMBER DELETE CHECK POP UP");

		return "mdeletepage_Chk";
	}

	// 친구 관리 페이지로 이동
	@RequestMapping("/friend.do")
	public String friend() {
		logger.info("FRIEND PAGE");

		return "friendpage";
	}

	// 쪽지 관리 페이지로 이동

	
	//[ 커뮤니티 ]
	//커뮤니티 페이지로 이동
	@RequestMapping("/communityMain.do")
	public String communityMain() {
		return "communityMain";
	}
	
	//커뮤니티 채팅방으로 이동
	@RequestMapping("/communityChat.do")
	public String communityChat() {
		return "communityChat";
	}

}
