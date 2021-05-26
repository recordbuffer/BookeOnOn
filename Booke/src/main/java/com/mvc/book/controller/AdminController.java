package com.mvc.book.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.book.model.biz.AdminBiz;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminBiz ambiz;

	// [ 관리자 기능 ]
	// 공지사항 글 작성 페이지 이동
	@RequestMapping("/ninsertform.do")
	public String noticeInsertform() {
		logger.info("NOTICE INSERT PAGE");

		return "setting/noticeInsert";
	}

	// 공지사항 글 작성
	@RequestMapping("/ninsert.do")
	public String noticeInsert(NoticeDto dto) {
		logger.info("NOTICE INSERT");

		int res = ambiz.insert(dto);

		if (res > 0) {
			return "redirect:notice.do";
		} else {
			return "redirect:ninsertform.do";
		}
	}

	// 공지사항 글 수정 페이지 이동
	@RequestMapping("/nupdateform.do")
	public String noticeUpdatepage(Model model, int bd_no) {
		logger.info("NOTICE UPDATE ONE");

		model.addAttribute("board", ambiz.selectOne(bd_no));

		return "setting/noticeUpdate";
	}

	// 공지사항 글 수정
	@RequestMapping("/nupdate.do")
	public String noticeUpdate(NoticeDto dto) {
		logger.info("NOTICE UPDATE");

		int res = ambiz.update(dto);

		if (res > 0) {
			return "redirect:notice.do";
		} else {
			return "redirect:nupdateform.do?bd_no=" + dto.getBd_no();
		}
	}

	// 공지사항 글 삭제
	@RequestMapping("/ndelete.do")
	public String noticeDelete(int bd_no) {
		logger.info("NOTICE DELETE");

		int res = ambiz.delete(bd_no);

		if (res > 0) {
			return "redirect:notice.do";
		} else {
			return "redirect:nupdateform.do?bd_no=" + bd_no;
		}

	}

	// 회원 관리 페이지로 이동
	@RequestMapping("/userAll.do")
	public String userAll(MemberDto dto, Model model) {
		logger.info("USER LIST");

		List<MemberDto> userList = ambiz.userList();

		model.addAttribute("userList", userList);

		return "setting/userAll";
	}

	// 회원 강제 탈퇴
	@RequestMapping("/userout.do")
	public String userOut(int be_no) {
		logger.info("USER DELETE");
		
		System.out.println(be_no);
		
		int res = ambiz.userout(be_no);
		
		 if(res>0) {
			 return "redirect:userAll.do"; 
		} else { 
			return "redirect:userAll.do"; 
		}
	}

}
