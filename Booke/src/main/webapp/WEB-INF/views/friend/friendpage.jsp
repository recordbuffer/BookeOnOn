<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	
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

td>img{
	margin-left: 20px;
    height: 30px;
}

</style>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 20px;">내 친구 목록</h1>

		<div style="height: 60px"></div>

		<!-- 결과 테이블 -->
		<section>
			<div style="height: 270px" >
				<table class="table table-hover">
					<col width="100">
					<col width="100">
					<col width="100">
					<col width="100">
					<col width="100">
					<tr style="font-size: 14pt;">
						<th>아이디</th>
						<th>닉네임</th>
						<th>회원등급</th>
						<th>친구 상태</th>
						<th>쪽지 보내기</th>
					</tr>
					<c:forEach items="${friendList }" var="flist">
						<tr>
							<td>${flist.be_id }</td>
							<td>${flist.be_nn }</td>
							<td>${flist.be_role }</td>
							<td>
								<button type="submit" id="mbtn" class="btn btn-outline-danger btn-sm" style="margin: 0px;" 
								onclick="location.href='deleteF.do?m2=${flist.be_id}'">친구 끊기</button>
							<td><img src="resources/images/mail.png" alt="#" onclick="location.href='msgPage.do'"></td>
						</tr>
					</c:forEach>
					<c:set var="cntFList"  value="${fn:length(friendList)}" scope="session"></c:set>
				</table>
			</div>
		</section>
		<div style="height: 70px"></div>

	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>