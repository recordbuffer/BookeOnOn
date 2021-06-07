package com.mvc.book.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.book.model.biz.FMsgBiz;
import com.mvc.book.model.biz.FriendBiz;
import com.mvc.book.model.biz.MsgBiz;
import com.mvc.book.model.dto.FMsgDto;
import com.mvc.book.model.dto.MemberDto;

@Controller
public class MsgController {

	private static final Logger logger = LoggerFactory.getLogger(MsgController.class);

	@Autowired
	private FriendBiz fbiz;

	@Autowired
	private FMsgBiz fmsgbiz;
	
	@Autowired
	private MsgBiz msgbiz;
	
	// 쪽지 관리 페이지로 이동
	@RequestMapping("/msgAll.do")
	public String msgpage(HttpSession session, Model model) {
		logger.info("MSG PAGE");
		
		MemberDto user = (MemberDto)session.getAttribute("user"); 
		String be_id = user.getBe_id();
		
		List<FMsgDto> fmsgList = fmsgbiz.selectMsgList(be_id);
		model.addAttribute("msgList",fmsgList);

		return "msg/msgAll";
	}
	
	// 내가 보낸 쪽지 페이지로 이동
	@RequestMapping("/sendmsgAll.do")
	public String sendMsgPage(HttpSession session, Model model) {
		logger.info("SEND MSG PAGE");
		
		MemberDto user = (MemberDto)session.getAttribute("user"); 
		String be_id = user.getBe_id();
		
		List<FMsgDto> fsendmsgList = fmsgbiz.sendMsgList(be_id);
		model.addAttribute("sendmsgList",fsendmsgList);
		
		return "msg/msgsendAll";
	}
	
	// 쪽지 하나 보기
	@RequestMapping("/msgOne.do")
	public String msgOne(Model model, int msg_no) {
		logger.info("MSG SELECT ONE");
		
		model.addAttribute("msg",fmsgbiz.selectMsg(msg_no));
		
		return "msg/msgOne";
	}

	
	
	
	// 쪽지 쓰기 페이지
	@RequestMapping("msgPage.do")
	public String msginsertpage(HttpSession session, Model model) {
		logger.info("MSG INSERT PAGE");
		
		MemberDto user = (MemberDto) session.getAttribute("user");
		String be_id = user.getBe_id();

		List<MemberDto> friendList = fbiz.selectFList(be_id);
		model.addAttribute("friendList", friendList);
		
		
		return "msg/msginsert";
	}
	
	
	//쪽지 쓰기
	@RequestMapping(value="/msginsert.do", method=RequestMethod.POST)
	public String msginsert(HttpSession session,HttpServletRequest request) {
		logger.info("MSG INSERT");
		
		MemberDto user = (MemberDto) session.getAttribute("user");
		String m1 = user.getBe_id();
		
		String m2 = request.getParameter("m2");
		String msg_content = request.getParameter("msg_content");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("m1", m1);
		map.put("m2", m2);
		map.put("msg_content", msg_content);
		
		System.out.println(map);
		
		int res = msgbiz.insertMsg(map);
		
		if(res>0) {
			return "redirect:msgAll.do";
		} else {
			return "redirect:msgAll.do";
		}
		
	}
	
	
	// 쪽지 삭제
	@RequestMapping("/msgdelete.do")
	public String msgmuldelete(int msg_no) {
		logger.info("MSG DELETE");
				
		int res = msgbiz.deleteMsg(msg_no);
		
		if(res>0) {
			return "redirect:msgAll.do";
		} else {
			return "redirect:msgAll.do";
		}
		
	}
	
	

}
