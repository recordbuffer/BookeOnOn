package com.semi.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginController.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String command = request.getParameter("command");
		System.out.println("[command : "+command+"]");
		
		if(command.equals("main")){
			response.sendRedirect("main.jsp");
			
		}else if(command.equals("login")){
			response.sendRedirect("login.jsp");
			
		}else if(command.equals("loginProc")){
			request.setAttribute("userId", request.getParameter("userId"));
			request.setAttribute("userPw", request.getParameter("userPw"));
			
			request.getRequestDispatcher("loginProc.jsp").forward(request, response);
			
		}else if(command.equals("registForm")){
			response.sendRedirect("registForm.jsp");
			
		}else if(command.equals("registProc")){
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String pw = request.getParameter("pw");
			
			request.setAttribute("id", id);
			request.setAttribute("name", name);
			request.setAttribute("pw", pw);
			
			request.getRequestDispatcher("registProc.jsp").forward(request, response);
			
		}else if(command.equals("logout")) {
			HttpSession session = request.getSession(false);
			session.invalidate();  //세션 정보 삭제
			
		}else if(command.equals("createNewProject")){
			response.sendRedirect("createNewProject.jsp");
			
			
		}else if(command.equals("selectAllSchedule")){
			response.sendRedirect("selectAllSchedule.jsp");
			
			
		}else if(command.equals("selectMyBoard")){
			response.sendRedirect("selectMyBoard.jsp");
			
			
		}else if(command.equals("freeBoard")){
			response.sendRedirect("freeBoard.jsp");
			
			
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	

}
