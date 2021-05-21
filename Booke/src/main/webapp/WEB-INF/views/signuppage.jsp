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

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6">

<style type="text/css">
body {
	display: flex;
	align-items: center;
	padding-top: 30px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

.text-center {
	text-align: center !important;
}

.form-signup {
	width: 100%;
	max-width: 400px;
	padding: 15px;
	margin: auto;
}

.form-control {
	padding: 0.5rem;
}

th{
	width:100px;
	font-weight:400;
}

td{
	padding: 0.5rem;
}

td>#btn {
	width:100px;
	background-color: rgb(181, 227, 216);
	border: none;
}
</style>
<script type="text/javascript">
	function idChk(){
		window.open("idChk.do","","width=500, height=500");
	}
</script>
</head>
<body class="text-center">

	<main class="form-signup">
		<img class="mb-4" src="resources/images/logo.png" alt="#" width="130">
		<br> <br>
		<hr>
		<br>
		<form action="signup.do" method="post">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" class="form-control" name="be_id"></td>
					<td><input type="button" value="중복 확인" class="form-control" id="btn"
						onclick="idChk();"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" class="form-control" name="be_pw"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="form-control" name="be_name"></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" class="form-control" name="be_nn"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" class="form-control" name="be_addr"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" class="form-control" name="be_email"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" class="form-control" name="be_phone"></td>
				</tr>
				<tr>
					<td colspan="3"><input type="submit" value="회원가입" class="form-control" id="btn" style="width: 370px;margin-top: 40px;font-size: 14pt;"></td>
				</tr>
			</table>
		</form>
		
	</main>
</body>
</html>