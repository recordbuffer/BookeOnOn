package com.mvc.book.controller;

import java.lang.reflect.Member;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
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
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	 @Autowired
	 private MemberBiz mbiz;
	 

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
	// 성공시 -> "/main.do" 이동 -> 
	// 로긴 실패시 -> "/loginform.do" 실패 알람 
	  
	// 회원 가입 post
	@RequestMapping(value = "/signup.do", method = RequestMethod.POST)
	public String postSignup(MemberDto dto){
	 logger.info("signup.do");
	 int res = mbiz.memberJoinMethod(dto);
	 if(res>0) {
		 return "redirect:loginform.do";
	 }else
		 return "redirect:signupform.do";
	 
	}
	//중복 체크
	@ResponseBody
	@RequestMapping(value="/nameChk", method = RequestMethod.POST)
	public int nameChk(Member member) throws Exception {
//	  int result = memberService.nameChk(member);
//	  return result;
		return 0;
	}

		@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberDto dto, HttpServletRequest request) {
		logger.info("login");
		
		HttpSession session = request.getSession();
		MemberDto res = mbiz.login(dto);
		if(res == null) {
			return "redirect:loginform.do";
		}else {
			// 로그인 성공 시 회원데이터 고유번호를 세션에 저장
			// 해당 정보는 로그아웃 시 세션을 비워줘야만 함.
			session.setAttribute("be_no", res.getBe_no());
			
			return "redirect:main.do";
		}

	}

	// 회원가입 페이지로 이동
		@RequestMapping("/signupform.do")
	    public String signupform() {
	        logger.info("signupform.do");



	        return "signuppage";
	    }

	// 회원가입_아이디 중복 체크 페이지로 이동
	@RequestMapping(value = "/idChk.do")
	public String signup_idChk() {
		logger.info("SIGNUP ID CHECK POP UP");

		return "signuppage_idchk";
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
	public String updateform(HttpSession session, HttpServletRequest request) {
		logger.info("UPDATE MEMBER INFO PAGE");

		// 세션에 로그인 정보가 존재하는지 여부 확인
		if (session.getAttribute("be_no") != null && !"".equals(String.valueOf(session.getAttribute("be_no")))) {
		
			MemberDto memberDto = new MemberDto();
			memberDto.setBe_no(Integer.parseInt(String.valueOf(session.getAttribute("be_no"))));
			
			// 회원정보 데이터를 view 에 내려줌.
			request.setAttribute("info", mbiz.getMemberInfo(memberDto));
		}

		return "updatepage";
	}
	
	// 회원 정보 수정 처리
	@RequestMapping("/modifyMember.do")
	public @ResponseBody String modifyMember(HttpServletRequest request, HttpSession session) throws Exception {
		boolean result = false;
		String resultMessage = "";
		
		// 세션에 로그인 정보가 존재하는지 여부 확인
		if (session.getAttribute("be_no") != null && !"".equals(String.valueOf(session.getAttribute("be_no")))) {
		
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
