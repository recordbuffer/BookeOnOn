package com.semi.freecomment.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.freecomment.dao.FreeCommentDao;
import com.semi.freecomment.dto.FreeCommentDto;

@WebServlet("/CommentController.do")
public class CommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//1. 인코딩 할것 
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//2, 커맨드 값 가져오기 
			
		String command = request.getParameter("command");
		System.out.println("[command : " + command + "]");
		
		if(command.equals("commentWrite")) {
			
			int free_board_num = Integer.parseInt(request.getParameter("free_board_num"));
			String free_com_content = request.getParameter("free_com_content");
			String free_com_id = request.getParameter("free_com_id");
			int seq = Integer.parseInt(request.getParameter("seq"));
			
			
			FreeCommentDto com_dto = new FreeCommentDto(free_board_num, free_com_id, free_com_content);
			FreeCommentDao dao = new FreeCommentDao();
			int res = dao.insert(com_dto);
			
			if(res>0) {
				response.sendRedirect("Controller.do?command=detail&seq="+seq);
			
			
					
			
		}
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//공유하는 request 와 response를 넘겨줘야해서 총 3개의 매개변수가 있다..
		
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
		//빨간줄 뜨면 throw로 넘겨준다.
	}
	

}
