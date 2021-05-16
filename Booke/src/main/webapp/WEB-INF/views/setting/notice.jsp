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
		<h1 style="margin-bottom: 50px;">공지사항</h1>

		<!-- 결과 테이블 -->
		<section>
			<div style="height: 100%">
				<table class="table table-striped" style="text-align:center">
					<col width="30">
					<col width="150">
					<col width="30">
					<col width="100">
					<tr >
						<th>글 번호</th>
						<th>글 제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.bd_no }</td>
							<td><a href="noticeOne.do?bd_no=${dto.bd_no}">${dto.bd_title }</a></td>
							<td>${dto.bd_nn }</td>
							<td>${dto.bd_date }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</section>

		<div style="height: 100px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>