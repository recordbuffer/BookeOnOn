package com.semi.group.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.semi.group.dao.GroupDao;
import com.semi.group.dto.GroupInvitationDto;
import com.semi.group.dto.GroupMemberListDto;
import com.semi.login.dto.LoginDto;

@WebServlet("/GroupController.do")
public class GroupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); 
		
		String command = request.getParameter("command");
		
		if(command.equals("createNewGroup")) {
			String group_name = request.getParameter("group_title");
			String group_content = request.getParameter("group_content");
			
			HttpSession session = request.getSession();
			LoginDto dto = (LoginDto)session.getAttribute("loginDto");  //현재 로그인된 세션정보 가져오기
			String member_id = dto.getId();  //현재 로그인한 회원의 id 가져오기
			String manager_yn = "Y";  //새 그룹을 생성할 경우 해당 회원이 그룹 매니저가 됨
			
			GroupDao dao = new GroupDao();
			int res1 = dao.GroupAllInsert(group_name);  //GroupAll 테이블에 insert 쿼리 작업
			int res2 = dao.GroupMappingInsert(group_name, member_id, manager_yn);  //GroupMapping 테이블에 insert 쿼리 작업
			
			if(res1>0 && res2>0) {
				System.out.println("새 그룹 생성 성공!");
				PrintWriter out = response.getWriter();  
				out.println("<script type=\"text/javascript\"> " + 
						"window.onload = function() { " + 
						"    opener.location.href='groupBoard.jsp'; " + 
						"    window.open(\"about:blank\",\"_self\").close(); " + 
						"} " + 
						"</script>");  
				
			}else {
				System.out.println("새 그룹 생성 실패!");
				PrintWriter out = response.getWriter();  
				out.println("<script type=\"text/javascript\"> " + 
						"window.onload = function() { " + 
						"    alert(\"새 그룹 생성 실패!\"); " + 
						"} " + 
						"</script>");  
			}
			
		}else if(command.equals("groupBoard")) {  //groupMain.jsp 에서 각 그룹 클릭 시 그룹게시판으로 넘어가도록
			String groupName = request.getParameter("groupName");
			//System.out.println(groupName);
			
			GroupDao dao = new GroupDao();
			List<GroupMemberListDto> groupMemberList = dao.groupMemberListSelect(groupName);
			
			request.setAttribute("groupName", groupName);
			request.setAttribute("groupMemberList", groupMemberList);
			request.getRequestDispatcher("groupBoard.jsp").forward(request, response);
			
		}else if(command.equals("inviteGroup")){
			LoginDto memberDto = (LoginDto)request.getSession().getAttribute("loginDto");
			String group_name = request.getParameter("group_name");
			String sender_id = memberDto.getId();
			String receiver_id = request.getParameter("receiver_id");
			
			GroupDao dao = new GroupDao();
			boolean manager_yn = dao.isManager(group_name, sender_id);
			System.out.println(manager_yn);  //true 리턴이면 초대요청보내는 회원이 해당 그룹의 매니저라는 의미.
			
			if(manager_yn) { //만약 회원이 해당 그룹의 매니저가 맞는 경우
				//GroupInvitation DB 테이블에 insert
				int res = dao.groupInvitationInsert(sender_id, receiver_id, group_name);
				
				if(res>0) {  //insert 성공하면
					request.getSession().setAttribute("groupName", group_name);
					
					PrintWriter out = response.getWriter();
					out.println("<script> " + 
							"        window.onload = function() { " + 
							"            alert(\"그룹 초대 성공!\"); " + 
							"            location.href=\"groupBoard.jsp\"; " + 
							"        } " + 
							"    </script>");
					out.close();
					
				}else {
					request.getSession().setAttribute("groupName", group_name);
					
					PrintWriter out = response.getWriter();
					out.println("<script> " + 
							"        window.onload = function() { " + 
							"            alert(\"그룹 초대 실패!!\"); " + 
							"            location.href=\"groupBoard.jsp\"; " + 
							"        } " + 
							"    </script>");
					out.close();
				}
				
			}else { //만약 회원이 해당 그룹의 매니저가 아닌 경우
				
				//자바스크립트로 request 파라미터에 담아서 그룹 이름을 넘기고 싶으나 안돼서 세션에 담아서 넘김 
				request.getSession().setAttribute("groupName", group_name);
				
				PrintWriter out = response.getWriter();
				out.println("<script> " + 
						"        window.onload = function() { " + 
						"            alert(\"그룹 초대는 그룹의 매니저만 가능합니다.\"); " + 
						"            location.href=\"groupBoard.jsp\"; " + 
						"        } " + 
						"    </script>");
				out.close();
			}
			
		}else if(command.equals("noticePopup")) {
			LoginDto logindto = (LoginDto)request.getSession().getAttribute("loginDto");
			String receiver_id = logindto.getId();
			
			GroupDao dao = new GroupDao();
			List<GroupInvitationDto> list = dao.groupInvitationSelect(receiver_id);
			
			request.setAttribute("groupInvitationList", list);
			request.getRequestDispatcher("noticePopup.jsp").forward(request, response);
			
		}else if(command.equals("acceptBtnClick")) {
			String group_name = request.getParameter("groupName");
			LoginDto loginDto = (LoginDto)request.getSession().getAttribute("loginDto");
			String member_id = loginDto.getId();
			
			String sender_id = request.getParameter("sender_id");
			
			GroupDao dao = new GroupDao();
			int res = dao.groupInvitationMappingInsert(group_name,member_id);
			int res2 = dao.groupInvitationCompleteUpdate(sender_id, member_id, group_name);
			
			if( (res>0) && (res2>0) ) {
				response.sendRedirect("GroupController.do?command=noticePopup");
			}else {
				System.out.println("그룹맵핑테이블 insert 및 그룹초대테이블 update 실패");
			}
			
		}else if(command.equals("rejectBtnClikc")) {
			String group_name = request.getParameter("groupName");
			LoginDto loginDto = (LoginDto)request.getSession().getAttribute("loginDto");
			String member_id = loginDto.getId();
			
			String sender_id = request.getParameter("sender_id");
			GroupDao dao = new GroupDao();
			
			int res2 = dao.groupInvitationCompleteUpdate(sender_id, member_id, group_name);
			
			if(res2>0) {
				response.sendRedirect("GroupController.do?command=noticePopup");
			}else {
				System.out.println("그룹초대테이블 update 실패");
			}
			
		}
	
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}
