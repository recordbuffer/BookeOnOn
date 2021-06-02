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

@Controller
public class BookcaseController {

	private static final Logger logger = LoggerFactory.getLogger(BookcaseController.class);

	@Autowired
	private BookcaseBiz bcbiz;
	
	
	// 서재 페이지_캘린더로 이동
	@RequestMapping("/bcaseCal.do")
	public String bcaseCal(HttpSession session, Model model) {
		logger.info("BOOKCASE PAGE CALENDAR");

		MemberDto user = (MemberDto)session.getAttribute("user");
		int be_no = user.getBe_no();
		System.out.println(be_no);
		
		
		//읽은 책 리스트 조회
		List<R_bookDto> readbookList = bcbiz.R_bookSelectAll(be_no);		
		model.addAttribute("readbookList",readbookList);
		System.out.println(readbookList.toString());
		
		return "bookcase/bookcase_cal";
	}

}
