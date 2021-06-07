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
	align-items: center !important;
	padding-top: 80px;
	background-color: #f5f5f5 !important;
}

.text-center {
	text-align: center !important;
}

.form-signup {
	width: 100%;
	max-width: 590px;
	padding: 15px;
	margin: auto;
	margin-bottom: 180px;
}

.form-control {
	padding: 0.5rem;
	border: 1px solid;
	color: black !important;
}

th {
	width: 100px;
	font-weight: 400;
}

td {
	padding: 0.5rem;
}

td>#btn {
	height: 60px;
	background-color: rgb(181, 227, 216);
	border: none;
}

</style>
</head>

<body class="text-center">

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<main class="form-signup">
		<h1>회원 설정</h1>
		<hr style="color: black !important">
		<br><br>
		<table>
			<tr>
				<td><input type="button" value="공지사항" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;"
							 onclick="location.href='notice.do'"></td>
				<td><input type="button" value="쪽지관리" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;"
							onclick="location.href='msgAll.do'"></td>
				<!-- 관리자 계정일 경우 -->
				<c:choose>
				<c:when test="${user.be_role == 'ADM' }">			
					<td><input type="button" value="회원관리" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;"
							onclick="location.href='userAll.do'"></td>		
				</c:when>
				<c:otherwise>
					<td><input type="button" value="친구관리" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;"
							onclick="location.href='friend.do'"></td>
				</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td><input type="button" value="회원 정보 수정" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;"
							onclick="location.href='updateform.do'"></td>
				<td><input type="button" value="회원 탈퇴" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;"
							onclick="location.href='md_aks.do'"></td>
				<td><input type="button" value="로그아웃" class="form-control" id="btn" style="width: 170px; margin-top: 20px; font-size: 14pt;" 
							onclick="location.href='logout.do'"></td>
			</tr>
		</table>
				
	</main>
</body>
<jsp:include page="../footer.jsp"></jsp:include>

</html>