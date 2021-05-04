<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ page import = "com.semi.login.dao.LoginDao" %>
<%@ page import = "com.semi.login.dto.LoginDto" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String userId = (String)request.getAttribute("userId");
	String userPw = (String)request.getAttribute("userPw");
	
	LoginDao dao = new LoginDao();
	
	LoginDto dto =  dao.login(userId, userPw);
	
	if(dto.getId() != null){
		session.setAttribute("loginDto", dto);  //해당 회원 정보 세션에 dto 라는 이름으로 set
		session.setMaxInactiveInterval(600);  //세션 유지 시간 10분
%>
	<script type="text/javascript">
		alert("로그인 되었습니다!");
		location.href="LoginController.do?command=main";
	</script>
	
<%
	
	}else{
%>
	<script type="text/javascript">
		alert("로그인 실패!");
		location.href="LoginController.do?command=login";
	</script>
<% 
	}

%>



</body>
</html>