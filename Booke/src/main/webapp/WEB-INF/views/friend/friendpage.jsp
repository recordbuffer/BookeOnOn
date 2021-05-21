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

td>img{
	margin-left: 20px;
    height: 30px;
}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
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
					<tr>
						<th>아이디</th>
						<th>닉네임</th>
						<th>회원등급</th>
						<th>친구 상태</th>
						<th>쪽지 보내기</th>
					</tr>
					<!-- 여기서 부턴 예시로 넣은 거니 나중에 지우고 코드 넣으시면 될 것 같습니다. -->
					<c:forEach items="${friendList }" var="flist">
						<tr>
							<td>${flist.be_id }</td>
							<td>${flist.be_nn }</td>
							<td>${flist.be_role }</td>
							<td><button class="btn btn-outline-dark btn-sm" type="submit" style="margin: 0px;">친구</button></td>
							<td><img src="resources/images/mail.png" alt="#"></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</section>
		<div style="height: 20px"></div>

	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>