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

textarea {
	padding: 20px;
}
</style>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 20px;">공지사항</h1>

		<!-- 결과 테이블 -->
		<section>
			<div style="height: 100%">
			<form action="nupdate.do" method="post">
			<input type="hidden" name="bd_no" value="${board.bd_no }">
				<table class="table">
					<tr style="margin-left: 20px">
						<th style="width: 130px">작성자</th>
						<td>${board.bd_nn }</td>
					</tr>
					<tr style="margin-left: 20px">
						<th style="width: 130px">글 제목</th>
						<td><input type="text" name="bd_title" value="${board.bd_title }"></td>
					</tr>
					<tr>
						<td colspan="2" style="height: 170px; padding: 2rem; font-size: 14pt;">
						<textarea rows="10" cols="170" name="bd_content">${board.bd_content }</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<input type="submit" class="btn btn-outline-dark" value="완료"> 
							<input type="button" class="btn btn-outline-dark" value="목록" onclick="location.href='notice.do'">
						</td>
					</tr>
				</table>
			</form>
			</div>
		</section>

		<div style="height: 80px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>