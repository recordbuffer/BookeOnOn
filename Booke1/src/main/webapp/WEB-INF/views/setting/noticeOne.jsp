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
textarea{
	padding:20px;
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
				<table class="table">
					<tr style="margin-left:20px">
						<th style="width:130px">작성자</th>
						<td>${board.bd_nn }</td>
					</tr>				
					<tr style="margin-left:20px">
						<th style="width:130px">글 제목</th>
						<td>${board.bd_title }</td>
					</tr>
					<tr>
						<td colspan="2" style="height: 170px;padding: 2rem;font-size: 14pt;">${board.bd_content }</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<!-- 관리자 계정일 경우 -->
						<c:if test="${user.be_role == 'ADM' }">
							<input type="button" class="btn btn-outline-dark" value="수정" onclick="location.href='nupdateform.do?bd_no=${board.bd_no}'">
							<input type="button" class="btn btn-outline-dark" value="삭제" onclick="location.href='ndelete.do?bd_no=${board.bd_no}'">														
						</c:if>	
							<input type="button" class="btn btn-outline-dark" value="목록" onclick="location.href='notice.do'">
						</td>
					</tr>
				</table>
			</div>
		</section>

		<div style="height: 80px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>