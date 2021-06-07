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

td>a {
	color: black !important;	
}
#btn {
	height: 60px;
	width: 110px;
}
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function({
		
	}));
</script>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1 style="margin-bottom: 50px;">쪽지 관리</h1>

		<!-- 결과 테이블 -->
		<section>
			<div class="container">
				<div class="row">
					<!-- 받은 쪽지 -->
					<div class="col-lg-9" style="right: 70px; margin-top: 15px;">
						<div style="height: 100%">
							<table class="table table-hover" style="text-align: center">
								<col width="30">
								<col width="150">
								<col width="50">
								<col width="50">
								<tr style="font-size: 14pt;">
									<th>보낸 사람</th>
									<th>내용</th>
									<th>작성일</th>
									<th></th>
								</tr>
								<c:forEach items="${msgList }" var="mail">
									<tr>
										<td>${mail.m1 }</td>
										<td>${mail.msg_content }</td>
										<td>${mail.msg_date }</td>									
										<td>
											<input type="submit" class="btn btn-dark" value="삭제" onclick="location.href='msgdelete.do?msg_no=${mail.msg_no}'">
										</td>
								</c:forEach>
							</table>
						</div>
					</div>
					<div class="col-lg-3" style="left: 40px;">
						<div class="row" >
							<div class="col-sm-12"><input type="button" value="쪽지 쓰기" class="btn btn-outline-dark" id="btn" 
														onclick="location.href='msginsert.do'"></div>
							<div class="col-sm-12"><input type="button" value="받은 쪽지함" class="btn btn-outline-dark" id="btn"></div>
							<div class="col-sm-12"><input type="button" value="보낸 쪽지함" class="btn btn-outline-dark" id="btn"></div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<div style="height: 180px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>