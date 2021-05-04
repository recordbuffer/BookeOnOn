<%@page import="com.semi.login.dto.LoginDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">




body {
	margin: 0px;
}

 main {
	background-color: white;
	width: 1500px;
	height: 1000px;
	box-sizing:border-box;
	padding-right: 200px;
	padding-left:250px;
	padding-top:100px;
	x
}


	div {
	border: 0px solid black; 
	}
	
	textarea {
	border: 0px solid white;
	}
	
	.detail{
	border: 0px slid white;
	}
	
	
	#private {
	float: right;
	
	}
	
	#button {
	width: 50px;
	height: 50px;
	}
</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    function logoClick() {
        location.href="controller.jsp?command=main";
    }
    
    $(document).ready( function() {
 	   
 	   $("#divaside").load("main_aside.jsp");
 	   $("#divheader").load("main_header.jsp");
 	   
 	   
    });

</script>



</head>
<body>

<header>
	<div id="divheader">

	</div>


</header>

<aside>

	<div id="divaside">

	</div>

</aside>

<main>
	<div id="divmain">
	
	
	
	
	<h1>${free_dto.free_title}</h1><br>
	<span class="user_name">${free_dto.free_writer}</span>
	<span class="dot">-</span>
	<span id="regdate">${free_dto.free_date}</span><span id="private">공개여부 : ${free_dto.free_private }</span><br>
	<span id="file">첨부파일</span><span id="private">진행상태 : ${free_dto.free_state }</span><br>
		<hr>
		
		
		<textarea rows="70" cols="70">${free_dto.free_content }</textarea>
		
		<table> 
		<tr>
		<td colspan="7"style="text-align:right">
		<input type="button" value="수정" onclick="location.href='Controller.do?command=updateform&seq=${free_dto.seq}'">
		<input type="button" value="목록" onclick="location.href='Controller.do?command=list'">
		<input type="button" value="삭제" onclick="location.href='Controller.do?command=delete&seq=${free_dto.seq}'">
		</td>
		</table>
		<hr>
	<form action="CommentController.do" method="post">
	<% LoginDto loginDto = (LoginDto)session.getAttribute("loginDto");  %>
	
		<input type="hidden" name="command" value="commentWrite">
		<input type="hidden" name="free_board_num" value="${free_dto.seq}">
		<input type="hidden" name="free_com_id" value="${loginDto.id}">
		<input type="hidden" name="seq" value="${free_dto.seq}">
		
		<h3>Comment</h3>
		<hr>
		
		<table>
		<tr>
		
		<tr>
		<td><textarea id="content" rows="2" cols="70" style="border: solid 1px" name="free_com_content"></textarea></td>
		<td><input type="submit" value="댓글작성"></td>
		
		</tr>
		
		</table>


	</form>
	

</div>
<div id="comment"> 	
	
	<table>
		<col width="100"><col width="500">



<tbody>


	<tr>
	
	<c:choose>
		<c:when test="${empty com_dto}">
		
		<tr>
			<td colspan="2" > --작성된 댓글이 존재 하지 않습니다...--</td>
		
		</tr>
		
	</c:when>
	<c:otherwise>
		<c:forEach var = "com_dto" items="${com_dto}">
		
	<tr>
		<td>${com_dto.free_com_id}</td>
		<td>${com_dto.free_com_content}</td>

	
	</c:forEach>
	</c:otherwise>
	</c:choose>
	

		
		
	</tr>
	
	
</tbody>

</table>
</div>



</main>

</body>
</html>