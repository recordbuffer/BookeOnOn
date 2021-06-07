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

	<jsp:include page="headerCommunity.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 20px;">커뮤니티</h1>

		<!-- 결과 테이블 -->
		<section>
			<div style="height: 100%">
				<table class="table">
					<tr style="margin-left:20px">
						<th style="width:130px">번호</th>
						<td>${board.bk_no }</td>
					</tr>				
					<tr style="margin-left:20px">
						<th style="width:130px">소통방 이름</th>
						<td>${board.bk_name }</td>
					</tr>
					<tr>
						<th style="width:130px">간단소개</th>
						<td colspan="2" style="height: 100px;padding: 2rem;font-size: 14pt;">${board.bk_introduce }</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<input type="button" class="btn btn-outline-dark" value="수정" onclick="location.href='cupdateform.do?bk_no=${board.bk_no}'">
							
							<c:if test="${user.be_role == 'ADM' }">
								<input type="button" class="btn btn-outline-dark" value="삭제" onclick="location.href='cdelete.do?bk_no=${board.bk_no}'">	
							</c:if>
							
							<input type="button" class="btn btn-outline-dark" value="목록" onclick="location.href='communityList.do'">
						</td>
					</tr>
				</table>
			</div>
		</section>

		<div style="height: 80px"></div>
	</main>

	<jsp:include page="footerCommunity.jsp"></jsp:include>


</body>

</html>