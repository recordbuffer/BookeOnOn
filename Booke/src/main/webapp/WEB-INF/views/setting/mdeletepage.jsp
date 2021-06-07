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
	align-items: center;
	padding-top: 80px;
	background-color: #f5f5f5;
}

.text-center {
	text-align: center !important;
}

.form-signup {
	width: 100%;
	max-width: 700px;
	padding: 15px;
	margin: auto;
	margin-bottom: 100px;
}

.form-control {
	padding: 0.5rem;
	border: 1px solid;
	color: black !important;
}

h2 {
	padding: 0.5rem;
}

#btn{
	background-color: rgb(181, 227, 216);
    border: none;
    color: black;
	padding: 20px;
}

</style>
<script type="text/javascript">
	function deleteChk(){
		window.open("deleteChk.do","","width=500, height=500");
	}
</script>
</head>

<body class="text-center">

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1>회원 탈퇴</h1>
		<hr style="color: black !important">
		<br>
		<!-- 여기서 부턴 예시로 넣은 거니 나중에 지우고 코드 넣으시면 될 것 같습니다. -->
		<h2>
			<b>${user.be_nn }</b> 님
		</h2>
		<h4>[ 아이디 : ${user.be_id } / 등급 : ${user.be_role } ]</h4>
		<br>
		<h3>332 권의 읽고 싶은 책,</h3>
		<h3>114 권의 읽은 책,</h3>
		<h3>2 개의 북벅북벅 소모임,</h3>
		<h3>17 명의 친구들이 있어요.</h3>
		<br>
		<br>
		<h3>정말 탈퇴하시겠어요? </h3><h1>&#128557; &#128557;</h1><br><br>
		<button type="button" class="btn btn-secondary btn-lg btn-block" id="btn" onclick="deleteChk();">네, 탈퇴할래요.</button>

	</main>
		<jsp:include page="../footer.jsp"></jsp:include>
	
	
</body>

</html>