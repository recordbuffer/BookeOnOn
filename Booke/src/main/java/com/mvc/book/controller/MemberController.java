package com.mvc.book.controller;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.book.model.biz.MemberBiz;
import com.mvc.book.model.dto.MemberDto;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberBiz mbiz;

	// 로그인 & 세션 생성
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(MemberDto dto, HttpServletRequest request) {
		logger.info("LOGIN");

		// 세션 생성
		HttpSession session = request.getSession();
		// 로그인 한 사람 정보
		MemberDto user = mbiz.login(dto);

		if (user != null) {
			// 로그인 정보가 맞다면
			// 세션 생성
			session.setAttribute("user", user);
			session.setMaxInactiveInterval(3600);

			return "redirect:main.do";

		} else {
			// 로그인 실패
			session.setAttribute("user", null);
			return "redirect:loginform.do";
		}
	}

	// 로그아웃
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("LOGOUT");

		mbiz.logout(session);

		return "redirect:welcome.do";
	}

	// 회원 가입 처리
	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public String postSignup(MemberDto dto) {
		logger.info("signup.do");
		int res = mbiz.memberJoinMethod(dto);
		if (res > 0) {
			return "redirect:loginform.do";
		} else
			return "redirect:signupform.do";

	}

	// 아이디 중복 체크
	@RequestMapping("/checkId.do")
	public @ResponseBody String checkId(HttpServletRequest request) throws Exception {
		logger.info("CHECK MemberDto = " + request.getParameter("be_id"));
		MemberDto memberDto = new MemberDto();
		memberDto.setBe_id(request.getParameter("be_id"));
		logger.info("CHECK MemberDto2 = " + mbiz.Idcheck(memberDto));
		// 결과 json 객체 생성
		JSONObject json = new JSONObject();
		json.put("result", mbiz.Idcheck(memberDto) > 0);	// 조회한 아이디와 일치하는 정보고 0개 이상인경우 true, 아니면 false
		
		// json객체를 문자열 형식으로 반환
		return json.toString();
	}

	
	// 회원 정보 수정 처리
	@RequestMapping("/modifyMember.do")
	public @ResponseBody String modifyMember(HttpServletRequest request, HttpSession session) throws Exception {
		boolean result = false;
		String resultMessage = "";
		
		// 세션에 로그인 정보가 존재하는지 여부 확인
		if (session.getAttribute("user") != null && !"".equals(String.valueOf(session.getAttribute("user")))) {
		
			MemberDto memberDto = new MemberDto();
			memberDto.setBe_no(Integer.valueOf(request.getParameter("be_no")));
			memberDto.setBe_id(request.getParameter("be_id"));
			memberDto.setBe_pw(request.getParameter("be_pw"));
			memberDto.setBe_nn(request.getParameter("be_nn"));
			memberDto.setBe_addr(request.getParameter("be_addr"));
			
			// 아이디와 패스워드를 이용하여 회원정보 조회 
			MemberDto info = mbiz.login(memberDto);
			
			// 아이디와 패스워드에 일치하는 정보가 존재하는 경우
			if (info != null) {
				
				// 회원정보 업데이트 수행
				int successCnt = mbiz.modifyMemberInfo(memberDto);
				
				// 회원정보 업데이트 결과 수정된 row 수가 0개 이상인 경우 성공처리, 아닌 경우 실패 처리함.
				if (successCnt > 0) {
					result = true;
				} else {
					result = false;
					resultMessage = "회원정보 수정에 실패하였습니다.";
				}
				
			} else {
				result = false;
				resultMessage = "일치하는 회원정보가 존재하지 않습니다.";
			}
		} else {
			result = false;
			resultMessage = "로그인 후 사용 가능합니.";
		}
		
		// 결과 json객체 생성 
		JSONObject json = new JSONObject();
		json.put("result", result);
		json.put("resultMessage", URLEncoder.encode(resultMessage, "UTF-8").replaceAll("\\+", "%20"));	//한글이 깨지는 것을 방지하기 위하여 인코딩 함. 인코딩시 띄어쓰기에 +가 들어가는 것을 제거하기 위해 replaceAll 처리함.
		
		// 결과 json객체를 문자열 형식으로 반환
		return json.toString();
		
	}

}
