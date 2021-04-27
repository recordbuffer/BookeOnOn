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
	padding-top: 80px;
	background-color: #f5f5f5;
}

.form-signup {
	width: 100%;
	max-width: 80%;
	padding: 15px;
	margin: auto;
}

.form-control {
	padding: 0.5rem;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	padding: 0.5rem;
}

#dvres {
	height: 270px;
}
</style>
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 20px;">회원 검색</h1>

		<!-- 검색 창 -->
		<div id="hddiv">
			<form class="d-flex" action="">
					<input class="form-control me-2" type="text" placeholder="Search" aria-label="Search">&nbsp; 
					<input class="btn btn-outline-dark" type="submit" value="Search">
			</form>
		</div>

		<!-- 친구 리스트 테이블 -->
		<section>
			<div id="dvres"></div>
		</section>

	</main>
	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>