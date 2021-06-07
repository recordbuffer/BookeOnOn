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
				<table class="table table-hover" style="text-align:center">
					<col width="30">
					<col width="150">
					<col width="30">
					<col width="100">
					<tr style="font-size: 14pt;">
						<th>글 번호</th>
						<th>글 제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					<c:forEach items="${list }" var="board">
						<tr>
							<td>${board.bd_no }</td>
							<td><a href="noticeOne.do?bd_no=${board.bd_no}">${board.bd_title }</a></td>
							<td>${board.bd_nn }</td>
							<td>${board.bd_date }</td>
						</tr>
					</c:forEach>
					<!-- 관리자 계정일 경우 -->
					<c:if test="${user.be_role == 'ADM' }">
						<tr>
							<td colspan="4" align="right" style="padding:0;">
								<input type="button" class="btn btn-outline-dark" value="글 작성" onclick="location.href='ninsertform.do'">
							</td>
						</tr>
					</c:if>
				</table>
			</div>
		</section>

		<div style="height: 180px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>