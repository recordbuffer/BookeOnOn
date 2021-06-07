package com.mvc.book.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.book.model.biz.BkBiz;

@Controller
public class CommunityController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Autowired
	private BkBiz bkbiz;
	
	//[ 커뮤니티 ]
	//커뮤니티 페이지로 이동
	@RequestMapping("/communityMain.do")
	public String communityMain() {
		return "community/communityMain";
	}
	
	//커뮤니티 채팅방으로 이동
	@RequestMapping("/communityChat.do")
	public String communityChat() {
		return "community/communityChat";
	}
}
