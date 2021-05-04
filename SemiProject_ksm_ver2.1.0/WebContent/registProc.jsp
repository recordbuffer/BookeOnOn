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
	String id = (String)request.getAttribute("id");
	String name = (String)request.getAttribute("name");
	String pw = (String)request.getAttribute("pw");

	LoginDao dao = new LoginDao();

	int res = dao.registInsert(id, name, pw);
	
	if(res>0){
%>
	<script type="text/javascript">
		alert("회원가입 성공! \n로그인을 진행해주세요!");
		location.href="LoginController.do?command=login";
	</script>
<%		
	}else{
%>	
	<script type="text/javascript">
		alert("회원가입 실패!");
		location.href="LoginController.do?command=registForm";
	</script>
<%	
	}
%>



</body>
</html>