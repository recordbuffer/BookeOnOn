<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	background-color: #f5f5f5 !important;
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

td>a {
	color: black !important;	
}
#btn {
	height: 60px;
	width: 110px;
}
</style>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 50px;">쪽지 보기</h1>

		<!-- 결과 테이블 -->
		<section>
			<div class="container">
				<div class="row">
					<!-- 받은 쪽지 -->
					<div class="col-lg-9" style="right: 70px; margin-top: 15px;">
						<div style="height: 100%">
							<table class="table">
								<tr style="margin-left: 20px">
									<th style="width: 130px">작성자</th>
									<td>${msg.m1}</td>
								</tr>
								<tr style="margin-left: 20px">
									<th style="width: 130px">수신자</th>
									<td>${msg.m2 }</td>
								</tr>
								<tr style="margin-left: 20px">
									<th style="width: 130px">보낸 날짜</th>
									<td>${msg.msg_date }</td>
								</tr>
								<tr>
									<td colspan="2"
										style="height: 170px; padding: 2rem; font-size: 14pt;">${msg.msg_content }</td>
								</tr>
								<tr>
									<td colspan="2" align="right">
										<input type="button" class="btn btn-dark" value="삭제" onclick="location.href='msgdelete.do?msg_no=${msg.msg_no}'">										
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="col-lg-3" style="left: 40px;">
						<div class="row">
							<div class="col-sm-12">
								<input type="button" value="쪽지 쓰기" class="btn btn-outline-dark"
									id="btn" onclick="location.href='msgPage.do'">
							</div>
							<div class="col-sm-12">
								<input type="button" value="받은 쪽지함" class="btn btn-outline-dark"
									id="btn" onclick="location.href='msgAll.do'">
							</div>
							<div class="col-sm-12">
								<input type="button" value="보낸 쪽지함" class="btn btn-outline-dark"
									id="btn" onclick="location.href='sendmsgAll.do'">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div style="height: 180px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>