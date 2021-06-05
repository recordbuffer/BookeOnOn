<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book e On&On</title>


<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css">
body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 20px;
	background-color: rgb(126,196,204);
}
.text-center {
	text-align: center !important;
}
.form-signin {
	width: 100%;
	max-width: 500px;
	padding: 15px;
	margin: auto;
}
.form-control {
	padding: 0.5rem;
}
th{
	width:200px;
	font-weight:400;
}
td{
	padding: 0.5rem;
}
td>#btn {
	background-color: rgb(100, 172, 184);
	width:200px;
	border: none;
	font-size: 14pt;
	transform: translate(120px, 0px);
}
</style>
</head>
<script type="text/javascript">
 function selectm2() {
        var obj_length = document.getElementsByName("m2").length;
  
        for (var i=0; i<obj_length; i++) {
            if (document.getElementsByName("m2")[i].checked == true) {
                alert(document.getElementsByName("m2")[i].value);
            }
        }
    }
</script>
<body class="text-center">
	<main class="form-signin">
	<img class="mb-4" src="resources/images/bk.gif" alt="#" width="130">
		<br> <br>
		<div style="background-color: #f5f5f5;">
		<table border="1">
			<tr>
				<th style="width: 70px;">수신자 선택</th>
				<th>아이디</th>
				<th>닉네임</th>
			</tr>
			<c:forEach items="${friendList }" var="flist">			
			<tr>
				<td><input type="radio" class="form-control" name="m2" value="${flinst.be_id }">
				<td>${flist.be_id }</td>
				<td>${flist.be_nn }</td>
			</tr>
			<tr>
				<td colspan="3" style="background-color: rgb(100, 172, 184); align:center">
				<input type="button" value="선택" class="form-control" id="btn" onclick="selectm2();"></td>
			</tr>
			</c:forEach>
		</table>
		</div>
	</main>
</body>
</html>