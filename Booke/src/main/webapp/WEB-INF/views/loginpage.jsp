<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.82.0">
<title>Book e On&On</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6">
<meta name="theme-color" content="#7952b3">

<style>
body {
	display: flex;
	align-items: center;
	padding-top: 90px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
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

.form>.form-control {
	padding: 0.5rem;
}

#btn {
	width: 176.8px;
	background-color: rgb(181, 227, 216);
	border: none;
}

a{text-decoration: none;
}
a:hover{color:hotpink;}
</style>


<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">


	<main class="form-signin">
		<img class="mb-4" src="resources/images/logo.png" alt="#" width="130">
		<br> <br><br>
		<hr>
		<br>
		<br>
		<form action="">
			<div class="form">
				<input type="text" class="form-control" placeholder="아이디">
			</div>
			<br>
			<div class="form">
				<input type="password" class="form-control" placeholder="비밀번호">
			</div>
			<br>
			<div class="form">
				<input type="submit" value="로그인" class="form-control" id="btn"
					onclick="">
			</div>
		</form>
		<br><br><br>
		<a href="">아이디 or 비밀번호 찾기</a>&nbsp;&nbsp;<span>/</span>&nbsp;
		<a href="">회원가입</a>
	</main>



</body>
</html>
