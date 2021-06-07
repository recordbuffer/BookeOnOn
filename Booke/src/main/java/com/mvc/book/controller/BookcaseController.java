package com.mvc.book.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.book.model.biz.BookcaseBiz;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Controller
public class BookcaseController {

	private static final Logger logger = LoggerFactory.getLogger(BookcaseController.class);

	@Autowired
	private BookcaseBiz bcbiz;

	// 서재 페이지_캘린더로 이동
	@RequestMapping("/bcaseCal.do")
	public String bcaseCal(HttpSession session, Model model) {
		logger.info("BOOKCASE PAGE CALENDAR");

		MemberDto user = (MemberDto) session.getAttribute("user");
		int be_no = user.getBe_no();
		System.out.println(be_no);

		// 읽은 책 리스트 조회
		List<R_bookDto> readbookList = bcbiz.R_bookSelectAll(be_no);
		model.addAttribute("readbookList", readbookList);
		System.out.println(readbookList.toString());

		return "bookcase/bookcase_cal";
	}

	//서재 페이지_읽고싶은 책 리스트 
	@RequestMapping("/selectwbook.do")
	public String selectWbook(HttpSession session, Model model) {
		logger.info("BOOKCASE PAGE WANTBOOK");

		MemberDto user = (MemberDto) session.getAttribute("user");
		int be_no = user.getBe_no();
		System.out.println("유저번호 : " + be_no);

		// 책 리스트 조회
		List<W_bookDto> bookList = bcbiz.W_bookSelectAll(be_no);
		List<R_bookDto> count = bcbiz.R_bookSelectAll(be_no);

		model.addAttribute("bookList", bookList);

		int lastIndex = bookList.size();
		int Rcount = count.size();

		model.addAttribute("w_book", lastIndex);
		model.addAttribute("r_book", Rcount);

		System.out.println("서재에 담긴 총 도서 수 : " + lastIndex);

		return "bookcase/bookcase";
	}

	// 서재 페이지_읽은 책 리스트
	@RequestMapping("/selectrbook.do")
	public String selectRbook(HttpSession session, Model model) {
		logger.info("BOOKCASE PAGE READBOOK");

		MemberDto user = (MemberDto) session.getAttribute("user");
		int be_no = user.getBe_no();
		System.out.println("유저번호 : " + be_no);

		// 책 리스트 조회
		List<R_bookDto> bookList = bcbiz.R_bookSelectAll(be_no);
		List<W_bookDto> count = bcbiz.W_bookSelectAll(be_no);

		model.addAttribute("bookList", bookList);

		int lastIndex = bookList.size();
		int Wcount = count.size();

		model.addAttribute("r_book", lastIndex);
		model.addAttribute("w_book", Wcount);

		System.out.println("서재에 담긴 총 도서 수 : " + lastIndex);

		return "bookcase/bookcase";
	}

}
