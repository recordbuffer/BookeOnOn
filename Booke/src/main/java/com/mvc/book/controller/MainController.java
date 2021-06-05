package com.mvc.book.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.book.model.biz.AdminBiz;
import com.mvc.book.model.biz.FriendBiz;
import com.mvc.book.model.biz.MemberBiz;
import com.mvc.book.model.dto.MemberDto;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private AdminBiz ambiz;
	private FriendBiz fbiz;
	private MemberBiz mbiz;
	

	// [시작 > 메인]
	// 웰컴페이지로 이동
	@RequestMapping("/welcome.do")
	public String index() {
		logger.info("WELCOME PAGE");

		return "welcome";
	}

	// [회원 로그인]
	// 로그인 페이지로 이동
	@RequestMapping("/loginform.do")
	public String loginForm() {
		logger.info("LOGIN FORM");

		return "login/loginpage";
	}

	// 회원가입 페이지로 이동
	@RequestMapping("/signupform.do")
	public String signupform() {
		logger.info("SIGN UP FORM");

		return "login/signuppage";
	}

	// 회원가입_아이디 중복 체크 페이지로 이동
	@RequestMapping(value = "/idChk.do")
	public String signup_idChk() {
		logger.info("SIGNUP ID CHECK POP UP");

		return "login/signuppage_idchk";
	}

	// [메인 페이지]
	// 로그인 후 메인 페이지로 이동
	@RequestMapping("/main.do")
	public String main(HttpSession session, Model model) {
		logger.info("MAIN PAGE");
		
		//친구 리스트 조회
		/*
		 * MemberDto user = (MemberDto)session.getAttribute("user"); String be_id =
		 * user.getBe_id();
		 * 
		 * List<MemberDto> friendList = fbiz.selectFList(be_id);
		 * model.addAttribute("friendList",friendList);
		 */
		
		//서재 리스트 조회
		

		return "mainpage";
	}

	// 메인_지도 위치 팝업
	@RequestMapping("/detailmap.do")
	public String detailmap() {
		return "bookintro/detailmap";
	}

	// 책 소개 페이지로 이동
	@RequestMapping("/bookintro.do")
	public String bookintro() {
		return "bookintro/bookintro";
	}

	// 책 소개 페이지_팝업 상세 정보
	@RequestMapping("/detailpopup.do")
	public String detailpopup() {
		return "bookintro/detailpopup";
	}

	// [ 쪽지 기능]
	// 쪽지 보내기
	@RequestMapping("/msg.do")
	public String msg() {
		return "msg";
	}

	// [ 책 검색 ]
	// 책 검색 페이지로 이동
	@RequestMapping("/bsearch.do")
	public String bsearch() {
		return "searchbook/bsearchpage";
	}

	// 책 검색 결과 페이지로 이동
	@RequestMapping("/bres.do")
	public String bres() {
		return "searchbook/bsearchpage_res";
	}

	// [ 서재 ]
	// 서재 페이지로 이동
	@RequestMapping("/bcase.do")
	public String bcase() {
		logger.info("BOOKCASE PAGE");

		return "bookcase/bookcase";
	}



	// [설정]
	// 설정 페이지로 이동
	@RequestMapping("/setting.do")
	public String setting() {
		return "setting/setting";
	}

	// 공지사항 페이지로 이동
	@RequestMapping("/notice.do")
	public String noticepage(Model model) {
		logger.info("NOTICE PAGE");

		model.addAttribute("list", ambiz.selectList());

		return "setting/notice";
	}

	// 공지사항 하나 보기
	@RequestMapping("/noticeOne.do")
	public String noticeOne(Model model, int bd_no) {
		logger.info("NOTICE SELECT ONE");

		model.addAttribute("board", ambiz.selectOne(bd_no));

		return "setting/noticeOne";
	}

	// 회원 정보 수정 페이지로 이동
	@RequestMapping("/updateform.do")
	public String updateform(HttpSession session, HttpServletRequest request) {
		logger.info("UPDATE MEMBER INFO PAGE");

		// 세션에 로그인 정보가 존재하는지 여부 확인
		if (session.getAttribute("be_no") != null && !"".equals(String.valueOf(session.getAttribute("be_no")))) {

			MemberDto memberDto = new MemberDto();
			memberDto.setBe_no(Integer.parseInt(String.valueOf(session.getAttribute("be_no"))));

			// 회원정보 데이터를 view 에 내려줌.
			request.setAttribute("info", mbiz.getMemberInfo(memberDto));
		}

		return "setting/updatepage";
	}

	// 회원 탈퇴 페이지로 이동
	@RequestMapping("/md_aks.do")
	public String mdelete() {
		logger.info("MEMBER DELETE PAGE");

		return "setting/mdeletepage";
	}

	// 회원 탈퇴 확인 페이지로 이동
	@RequestMapping(value = "/deleteChk.do")
	public String mdelete_Chk() {
		logger.info("MEMBER DELETE CHECK POP UP");

		return "setting/mdeletepage_Chk";
	}


	
}
