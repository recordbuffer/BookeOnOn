<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDao" %>
<%@ page import="java.io.PrintWriter" %>
<%@ request.setcharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" class="user" property="be_id" />
<jsp:setProperty name="user" class="user" property="be_pw" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta http=equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body class="text-center">
 <%
    UserDao userDao = new UserDAO();//인스턴스 생성
    int result = userDAO.login(user.getbe_id(), user.getbe_pw());
    if(result == 1 ){
    	PrintWriter script = response.getWriter();
    	script.println("<script>");
    	script.println("<location.href = 'mainpage.jsp'");
    	script.println("<script>");
    }
    else if (result == 0){
    	PrintWriter script = response.getWriter();
    	script.println("<script>");
    	script.println("alert('비밀번호가 틀립니다.')");
    	script.println("history.back()");
    	script.println("<script>");
    }
    else if (result == -1){
    	PrintWriter script = response.getWriter();
    	script.println("<script>");
    	script.println("alert('존재하지 않는 아이디 입니다.')");
    	script.println("history.back()");//이전페이지로 사용자 돌려보냄 
    	script.println("<script>");
    }
    else if (result == -2){
    	PrintWriter script = response.getWriter();
    	script.println("<script>");
    	script.println("alert('데이터베이스 오류가 발생했습니다.')");
    	script.println("history.back()");
    	script.println("<script>");
    
 %>

</body>
</html>
