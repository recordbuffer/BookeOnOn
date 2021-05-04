<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%@ page import = "com.semi.login.dao.LoginDao" %>
<%@ page import = "com.semi.login.dto.LoginDto" %>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

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
	

}



</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

    
   $(document).ready( function() {
	   
	   $("#divaside").load("main_aside.jsp");
	   $("#divheader").load("main_header.jsp");
	   
	   
   });

</script>

<body>

<header>

	<div id="divheader"></div>
	
</header>

<aside>

	<div id="divaside"></div>
	


</aside>



<main>


<% LoginDto loginDto = (LoginDto)session.getAttribute("loginDto");  %>
<h1>새글 작성</h1>


<form action="Controller.do"method="post">

	<input type="hidden" name="command" value="write">



<table class="table table-sm">

	<tr>
		<th>작성자</th>
		<td><input type="text" size="70px" name="free_writer" value="${loginDto.id }"></td>
		

	<tr>
		<th>제목</th>
		<td><input type="text" placeholder="제목을 입력해주세요" size="70px" name="free_title"></td>

	</tr>
	
	<tr>
		<th>상태</th>
		<td><select id="free_state" name="free_state">
    <option value="완료">완료</option>
    <option value="진행">진행</option>
    <option value="보류">보류</option>
    	</select></td>
    </tr>
    
   <tr>
   		<th>내용</th>
   		<td><textarea cols="70" rows="20" name="free_content"></textarea></td>
   		
   </tr>
   
   
   <tr>
  <th>첨부파일</th>
  <td><input type="file"  size="50" name="file"
  maxlength="50"></td>
   </tr>
   
   <tr>
   <td colspan="5"><input type="submit" value="작성완료">
   		<input type="button" value="취소" onclick="location.href='Controller.do?command=list'">
 
   	<select id="browsers" name="free_private" >
    <option value="전체공개">전체공개</option>
    <option value="비공개">비공개</option>
    <option value="멤버공유">멤버공유</option>
    	</select></td>
   
   </tr>
   
</table>


</form>


</main>
</body>
</html>