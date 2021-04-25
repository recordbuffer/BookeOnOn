<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book e On&On</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" href="resources/css/mainpage.css" type="text/css">


<style type="text/css">
body {
	display: flex;
	align-items: center;
	padding-top: 80px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
	padding-bottom: 40px;
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
	border: 1px solid;
	color : black !important;
}

th {
	width: 100px;
	font-weight: 400;
}

td {
	padding: 0.5rem;
}

td>#btn {
	height : 60px;
	background-color: rgb(181, 227, 216);
	border: none;
}
</style>
</head>

<body class="text-center">

	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1>회원 정보 수정</h1>
		<hr style="color:black!important">
		<form action="">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" class="form-control" name="be_id"
						readonly="readonly" value=""></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="text" class="form-control" name="be_pw"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="form-control" name="be_name"
						readonly="readonly" value=""></td>
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
					<td><input type="text" class="form-control" name="be_email"
						readonly="readonly" value=""></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" class="form-control" name="be_phone"
						readonly="readonly" value=""></td>
				</tr>
				<tr>
					<td colspan="3"><input type="submit" value="수정 완료"
						class="form-control" id="btn"
						style="width: 370px; margin-top: 20px; font-size: 14pt;"></td>
				</tr>
			</table>
		</form>
	</main>

	<!-- footer -->
</body>
</html>