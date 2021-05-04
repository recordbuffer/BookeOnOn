package com.semi.freeboard.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.freeboard.dao.FreeBoardDao;
import com.semi.freeboard.dto.FreeBoardDto;
import com.semi.freecomment.dao.FreeCommentDao;
import com.semi.freecomment.dto.FreeCommentDto;

@WebServlet("/Controller.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 인코딩 할것 
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//2, 커맨드 값 가져오기 
			
		String command = request.getParameter("command");
		System.out.println("[command : " + command + "]");
		
		
		FreeBoardDao dao = new FreeBoardDao();
		
		if(command.equals("list")) {
			List<FreeBoardDto> free_dto = dao.allSelect();
		
			request.setAttribute("list", free_dto);
			dispatch("freeBoard.jsp",request,response);

			
		}else if(command.equals("detail")) {
			int seq = Integer.parseInt(request.getParameter("seq"));
			
			
			FreeBoardDto free_dto = dao.selectOne(seq);
			
			
			FreeCommentDao com_dao = new FreeCommentDao();
			List<FreeCommentDto> com_dto = com_dao.allComment(seq);
			
			request.setAttribute("com_dto", com_dto);
			
			System.out.println(com_dto);
			request.setAttribute("free_dto",free_dto);
			dispatch("freeBoard_detail.jsp",request,response);
			
			
		}else if(command.equals("updateform")) {
			int seq = Integer.parseInt(request.getParameter("seq"));

			
			FreeBoardDto free_dto = dao.selectOne(seq);
			
			request.setAttribute("free_dto", free_dto);
			dispatch("freeBoard_update.jsp", request, response);
					
		}else if(command.equals("update")) {
			
			int seq = Integer.parseInt(request.getParameter("seq"));
			String free_title = request.getParameter("free_title");
			String free_state = request.getParameter("free_state");
			String free_private = request.getParameter("free_private");
			String free_content = request.getParameter("free_content");
			
			FreeBoardDto free_dto = new FreeBoardDto(seq, free_state, free_title, free_content, free_private);
			
			int res = dao.update(free_dto);
			
			if(res>0) {
				dispatch("Controller.do?command=detail&seq="+seq, request, response);

			}
					
			
		}else if(command.equals("writeform")) {
			
			
			response.sendRedirect("freeBoard_write.jsp");
		}else if(command.equals("write")) {
			
			String free_title = request.getParameter("free_title");
			String free_writer = request.getParameter("free_writer");
			String free_state = request.getParameter("free_state");
			String free_content = request.getParameter("free_content");
			String free_private = request.getParameter("free_private");
			
			FreeBoardDto free_dto = new FreeBoardDto(free_state, free_title, free_content, free_writer, free_private);
			int res = dao.insert(free_dto);
			
			if(res>0) {
				dispatch("Controller.do?command=list", request, response);
			}
		}else if(command.equals("delete")) {
			
			int seq = Integer.parseInt(request.getParameter("seq"));
			
			
			request.setAttribute("seq", seq);
			
			int res = dao.delete(seq);
			

			if(res>0) {
				dispatch("Controller.do?command=list",request, response);
			}
			
		}else if(command.equals("selectMyBoard")) {
			
			
			String userId = request.getParameter("userId");
			
			
			FreeBoardDto free_dto = dao.selectMyboard(userId);
			
			System.out.println(userId);
			
			request.setAttribute("free_dto",free_dto);
			dispatch("freeBoard_detail.jsp",request,response);
			
			
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
