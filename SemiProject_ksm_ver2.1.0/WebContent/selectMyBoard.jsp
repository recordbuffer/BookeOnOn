<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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

table.type08 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-left: 1px solid #ccc;
  margin: 20px 10px;
}

table.type08 thead th {
  padding: 10px;
  font-weight: bold;
  border-top: 1px solid #ccc;
  border-right: 1px solid #ccc;
  border-bottom: 2px solid #c00;
  background: #dcdcd1;
}

table.type08 td {
  padding: 10px;
  vertical-align: top;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
 
    

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

	<div id="divaside">
	</div>
	
	
</aside>

<main>
	<div id="divmain">


<h2>&nbsp;&nbsp;&nbsp;&nbsp;내 게시글</h2>

<hr>


<table class="type08">
		<col width="100"><col width="100"><col width="600"><col width="200"><col width="200"><col width="200">



<thead style="text-align:center">
	<tr>
		<th>번호</th>
		<th>상태</th>
		<th>제목</th>
		<th>작성자</th>
		<th>수정일자</th>
		<th>공개범위</th>
		
		
		

	
	</tr>
	
</thead>

<tbody>


	<tr>
	
	<c:choose>
		<c:when test="${empty list}">
		
		<tr>
			<td colspan="6" > --작성된 글이 존재 하지 않습니다...--</td>
		
		</tr>
		
	</c:when>
	<c:otherwise>
		<c:forEach var = "free_dto" items="${list }">
		
	<tr>
		<td>${free_dto.seq }</td>
		<td>${free_dto.free_state }</td>
		<td><a href="Controller.do?command=detail&seq=${free_dto.seq}">${free_dto.free_title }</a></td>
		<td>${free_dto.free_writer }</td>
		<td>${free_dto.free_date }</td>
		<td>${free_dto.free_private }</td>
		

		
	
	</c:forEach>
	</c:otherwise>
	</c:choose>
	

		
		
	</tr>
	
	
</tbody>
	
<tfoot>
	
	<tr>
	<td colspan="6">
	<input type="button" value="글쓰기" onclick="location.href='Controller.do?command=writeform'">
	</td>
	</tr>

	
		
</tfoot>

</table>
</div>


</main>
</body>
</html>