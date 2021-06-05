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
				<form action="msginsert.do" method="post">
					<table class="table">
						<tr style="margin-left: 20px">
							<th style="width: 130px">발신자</th>
							<td><input type="hidden" name="bd_nn" value="${user.be_id }">${user.be_id }</td>
						</tr>
						<tr style="margin-left: 20px">
							<th style="width: 130px">수신자</th>
							<td>
								<select class="form-select" aria-label="Default select example" name="m2">
									<option selected >친구선택</option>
								<c:forEach items="${friendList }" var="flist" varStatus="status">
										<option value="${status.current.be_id}">${flist.be_nn }(${flist.be_id })</option>
								</c:forEach>						
								</select>
								</td>
						</tr>
						<tr>
							<td colspan="2"><textarea rows="10" cols="170" name="msg_content"></textarea></td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<input type="submit" class="btn btn-outline-dark" value="전송"> 
								<input type="button" class="btn btn-outline-dark" value="목록"  onclick="location.href='msgAll.do'">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</section>

		<div style="height: 40px"></div>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>

</html>