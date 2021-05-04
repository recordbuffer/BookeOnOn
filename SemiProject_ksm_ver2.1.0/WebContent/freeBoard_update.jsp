<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    
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
    function logoClick() {
        location.href="controller.jsp?command=main";
    }
    
    
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

	<div id="divheader"></div>
	
</header>

<aside>

	<div id="divaside"></div>
	


</aside>

<main>

	<form action="Controller.do" method="post">
	<input type="hidden" name="command" value="update">
	<input type="hidden" name="seq" value="${free_dto.seq }">


	<table border="1">
		<tr>
			<th>작성자</th>
			<td>${free_dto.free_writer }</td>
		</tr>
	
		<tr>
			<th>제목수정</th>
			<td><input type="text" name ="free_title" value="${free_dto.free_title }"></td>

		</tr> 
	
		<tr>
		<th>상태변경</th>
		<td>${free_dto.free_state }&nbsp;<select id="free_free_state" name="free_state">
 		<option value="완료">완료</option>
	    <option value="진행">진행</option>
	    <option value="보류">보류</option>
    	</select></td>
    	</tr>
    	
    	
    	<tr>
    	<th>공개설정</th>
    	<td>${free_dto.free_private}&nbsp;<select id="free_private" name="free_private">
 		<option value="비공개">비공개</option>
	    <option value="공개">공개</option>
    	</select></td>
    	
    	</tr>
	
		<tr>
		<th>내용수정</th>
		<td><textarea cols="70" rows="20" name="free_content">${free_dto.free_content }</textarea></td>
		
		</tr>
		
		
		<tr>
		<td colspan="2"><input type="submit" value="저장">
		<input type="button" value="취소" onclick="location.href='Controller.do?command=detail&seq=${free_dto.seq}'"></td>
		</tr>
	
	
	</table>
	</form>
	
	
</main>

</body>
</html>