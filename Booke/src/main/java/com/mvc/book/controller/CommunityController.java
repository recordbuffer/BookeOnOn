package com.mvc.book.controller;



import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.book.model.biz.BkBiz;
import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

@Controller
public class CommunityController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	@Autowired
	private BkBiz bkbiz;
	
	//[ 커뮤니티 ]
	//커뮤니티 페이지로 이동
	@RequestMapping("/communityMain.do")
	public String communityMain(Model model) {
		
		List<BkDto> list = bkbiz.communityListAll();
				
		model.addAttribute("list", list);
		System.out.println(list);
		return "community/communityMain";
	}
	
	//커뮤니티 채팅방으로 이동
	@RequestMapping("/communityChat.do")
	public String communityChat(HttpSession session, Model model) throws ParseException {
		
		MemberDto dto = (MemberDto)session.getAttribute("user");
		
		String nickname = dto.getBe_nn();
		int no = dto.getBe_no();
		
		System.out.println("닉네임" + nickname);
		
		model.addAttribute("nickname", nickname);
		model.addAttribute("no", no);
		
		logger.info("CHAT PAGE");
		return "community/communityChat";
	}
	
	@RequestMapping("/chatTest.do")
	public String chatTest(HttpSession session, Model model) throws ParseException {
		
		MemberDto dto = (MemberDto)session.getAttribute("user");
		
		String nickname = dto.getBe_nn();
		int no = dto.getBe_no();
		
		System.out.println("닉네임" + nickname);
		
		model.addAttribute("nickname", nickname);
		model.addAttribute("no", no);
		
		logger.info("CHAT PAGE");
		
		return "community/chatTest";
	}
	
	// 커뮤니티List로 이동
		@RequestMapping("/communityList.do")
		public String communityListAll(Model model) {
			logger.info("COMMUNITY PAGE");

			model.addAttribute("list", bkbiz.communityListAll());

			return "community/communityList";
		}

		// 소통방 하나 보기
		@RequestMapping("/communityRoom.do")
		public String communityEnter(Model model, int bk_no) {
			logger.info("COMMUNITY SELECT ONE");

			model.addAttribute("board", bkbiz.communityEnter(bk_no));

			return "community/communityRoom";
		}
	
		// 커뮤니티 작성 페이지 이동
		@RequestMapping("/cinsertform.do")
		public String makeCommunityRoomform() {
			logger.info("COMMUNITY INSERT PAGE");

			return "community/communityInsert";
		}

		// 커뮤니티 작성
		@RequestMapping("/cinsert.do")
		public String makeCommunityRoom(String bk_name, String bk_introduce) {
			logger.info("COMMUNITY INSERT");
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("bk_name", bk_name);
			map.put("bk_introduce", bk_introduce);
			int res = bkbiz.makeCommunityRoom(map);
			
			if (res > 0) {
				return "redirect:communityList.do";
			} else {
				return "redirect:cinsertform.do";
			}
		}

		// 커뮤니티 수정 페이지 이동
		@RequestMapping("/cupdateform.do")
		public String noticeUpdatepage(Model model, int bk_no) {
			logger.info("COMMUNITY UPDATE ONE");

			model.addAttribute("board", bkbiz.communityEnter(bk_no));

			return "community/communityUpdate";
		}

		// 커뮤니티 수정
		@RequestMapping("/cupdate.do")
		public String noticeUpdate(BkDto dto) {
			logger.info("NOTICE UPDATE");

			int res = bkbiz.updateCommunity(dto);

			if (res > 0) {
				return "redirect:communityList.do";
			} else {
				return "redirect:cupdateform.do?bk_no=" + dto.getBk_no();
			}
		}

		// 커뮤니티 글 삭제
		@RequestMapping("/cdelete.do")
		public String noticeDelete(int bk_no) {
			logger.info("NOTICE DELETE");

			int res = bkbiz.communityDel(bk_no);

			if (res > 0) {
				return "redirect:communityList.do";
			} else {
				return "redirect:cupdateform.do?bk_no=" + bk_no;
			}

		}
	
	
}
