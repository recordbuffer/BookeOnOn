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

td>img {
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
		<h1 style="margin-bottom: 20px;">회원 검색</h1>

		<!-- 검색 창 -->
		<div id="hddiv">
			<form class="d-flex" action="fres.do" method="post">
				<input type="hidden" value="searchid"> <input
					class="form-control me-2" type="text" placeholder="Search"
					id="searchid" name="searchid">&nbsp; <input
					class="btn btn-outline-dark" type="submit" id="searchbtn"
					name="searchbtn" value="Search">
			</form>
		</div>

		<div style="height: 60px"></div>

		<!-- 결과 테이블 -->
		<section>
			<div style="height: 100%">
				<form action="fsearch.do">
					<table class="table table-hover">
						<col width="100">
						<col width="100">
						<col width="100">
						<col width="50">
						<col width="100">
						<tr>
							<th>아이디</th>
							<th>닉네임</th>
							<th>회원등급</th>
							<th>친구 상태</th>
							<th>쪽지 보내기</th>
						</tr>
					<c:forEach items="${Searchlist }" var="slist" varStatus="status">
						<tr>
							<td>${slist.be_id }</td>
							<td>${slist.be_nn }</td>
							<td>${slist.be_role }</td>
							<c:set var="frd" value="false"/>
							<c:forEach items="${friendList }" var="flist">
								<c:if test="${status.current.be_id ==flist.be_id }">
									<c:set var="frd" value="true"/>
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${status.current.be_id == user.be_id }">
								
								</c:when>
								<c:otherwise>
							<c:choose>
								<c:when test="${frd == true }">
									<td>								
									<button type="submit" id="fbtn" class="btn btn-outline-danger btn-sm" style="margin: 0px;"
										onclick="location.href='delF.do?m2=${status.current.be_id}'">친구끊기</button></td>
									<td><img src="resources/images/mail.png" alt="#"></td>
								</c:when>
								<c:otherwise>
									<td>
									<button type="submit" id="mbtn" class="btn btn-outline-dark btn-sm" style="margin: 0px;" 
										onclick="location.href='insertF.do?m2=${status.current.be_id}'">친구맺기</button></td>
									<td><img src="resources/images/unable.png" alt="#"></td>
								</c:otherwise>
							</c:choose>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
					</table>
				</form>
			</div>
		</section>

		<div style="height: 60px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>