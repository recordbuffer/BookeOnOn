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
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<meta name="theme-color" content="#7952b3">

<style>
body {
	display: flex;
	align-items: center;
	padding-top: 100px;
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

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-floating>.form-control, .form-floating>.form-select {
	padding: 1rem .75rem;
}
</style>


<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">

	<main class="form-signin">
		<img class="mb-4" src="resources/images/logo.png" alt="" width="130">
		<br>
		<br>
		<hr>
		<br>
		<form>
			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com">
			</div>
			<br>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password">
			</div>

			<br> <br>
			<div class="d-grid gap-2 col-6 mx-auto">
				<button class="btn btn-primary" type="button">Button</button>
			</div>
		</form>
	</main>



</body>
</html>
