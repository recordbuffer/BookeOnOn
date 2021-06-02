package com.mvc.book.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.book.model.biz.SavedbBiz;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Controller
public class SavedbController {

	private static final Logger logger = LoggerFactory.getLogger(FriendController.class);
	
	@Autowired
	private SavedbBiz biz;
	
	@RequestMapping("/rsavedb.do")
	public String Rinsert(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ParseException{
		logger.info("READSAVEDB");
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String cover = request.getParameter("cover");
		String date = request.getParameter("date");
		
		DateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd");
		Date endDate = dateFormat.parse(date);


		System.out.println("date : " +  date);
		System.out.println("enddate : " + endDate);
		
		MemberDto user = (MemberDto)session.getAttribute("user");
		int be_no = user.getBe_no();
		

		R_bookDto dto = new R_bookDto(0, be_no, title, author, cover, endDate);
		
		int res = biz.Rinsert(dto);
		
		if(res > 0) {
			return "redirect:bookintro.do";
		}else{
			return "redirect:main.do";
		}
		
	}
	
	@RequestMapping("/wsavedb.do")
	public String Winsert(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ParseException{
		logger.info("READSAVEDB");
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String cover = request.getParameter("cover");
		
		MemberDto user = (MemberDto)session.getAttribute("user");
		int be_no = user.getBe_no();
		
		W_bookDto dto = new W_bookDto(0, be_no, title, author, cover, null);
		
		int res = biz.Winsert(dto);
		
		if(res > 0) {
			return "redirect:bookintro.do";
		}else{
			return "redirect:main.do";
		}
		
	}

}
