<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book e On&On</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6">

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
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

th{
	width:100px;
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
	
}
</style>
</head>
<body class="text-center">
	<main class="form-signin">
	<img class="mb-4" src="resources/images/bk.gif" alt="#" width="130">
		<br> <br>
		<div style="background-color: #f5f5f5;">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td>아이디 값 여기에 들어감</td>
			</tr>
			<tr>
				<td colspan="2">사용 가능한 아이디입니다 / 중복된 아이디 입니다.</td>
			</tr>
			<tr>
				<td colspan="2" style="background-color: rgb(100, 172, 184);"><input type="button" value="확인" class="form-control" id="btn" onclick=""></td>
			</tr>
		</table>
		</div>
	</main>
</body>
</html>