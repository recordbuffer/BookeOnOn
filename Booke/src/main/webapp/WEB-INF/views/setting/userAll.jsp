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

<script type="text/javascript">
	function aa() {
		alert("탈퇴 성공");
	}
	
	function bb() {
		alert("탈퇴 복구 성공");
	}
</script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
});
</script>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 20px;">회원 목록</h1>
		<div style="height: 30px"></div>
		<!-- 결과 테이블 -->
		<section>
			<h5 style="text-align: right;">총 ${fn:length(userList)-1} 명</h5>
			<div style="height: 100%" >
				<table class="table table-hover">
					<tr style="font-size: 14pt;">
						<th>번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>닉네임</th>
						<th>이메일</th>
						<th>회원등급</th>
						<th>탈퇴여부</th>
						<th>&nbsp;</th>
					</tr>					
					<c:forEach items="${userList }" var="ulist">
						<tr>
						<!-- 본인 계정은 안보이게 하고 싶은데 일단 안돼서 관리자 계정만 넣어줌 -->						
						<c:if test="${ulist.be_id != 'thal00'}">
							<td>${ulist.be_no }</td>
							<td>${ulist.be_id }</td>
							<td>${ulist.be_name }</td>							
							<td>${ulist.be_nn }</td>
							<td>${ulist.be_email}</td>
							<td>${ulist.be_role }</td>
							<td>${ulist.be_enabled }</td>
							<td>
						<c:choose>
							<c:when test="${ulist.be_enabled =='Y' }">
								<input type="button" class="btn btn-outline-danger btn-sm" value="강제탈퇴" onclick="location.href='userout.do?be_no=${ulist.be_no}'; aa();">
							</c:when>
							<c:otherwise>
								<input type="button" class="btn btn-outline-dark btn-sm" value="탈퇴복구" onclick="location.href='userback.do?be_no=${ulist.be_no}'; bb();">								
							</c:otherwise>
						</c:choose>
							</td>				
						</c:if>	
						</tr>
					</c:forEach>
				</table>
			</div>
		</section>
		<div style="height: 80px"></div>

	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>