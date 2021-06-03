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
td>a{
	color:black !important;
}
</style>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 50px;">쪽지 관리</h1>

		<!-- 결과 테이블 -->
		<section>
			<div style="height: 100%">
				<table class="table table-hover" style="text-align:center">
					<col width="30">
					<col width="100">
					<col width="150">
					<col width="100">
					<tr style="font-size: 14pt;">
						<th><input type="checkbox" name="all" onclick="allChk(this.checked);"> </th>
						<th>보낸 사람</th>
						<th>내용</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${msgList }" var="mail">
					<tr>
						<td>${mail.m1 }</td>
						<td>${mail.msg_content }</td>
						<td>${mail.msg_date }</td>						
					</tr>
					</c:forEach>
					<tr>
						<td colspan="4" align="right" style="padding:0;">
							<input type="button" class="btn btn-outline-dark" value="삭제" onclick="location.href='.do'">
						</td>
					</tr>
				</table>
			</div>
		</section>

		<div style="height: 180px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>