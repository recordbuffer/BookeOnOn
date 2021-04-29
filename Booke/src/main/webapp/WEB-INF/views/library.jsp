<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
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
#mainnav {
	background-color: #b5e3d8 !important;
}

#mainhd {
	background-color: #fff !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}
</style>
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>


	<!-- Page Content -->

	<div class="d1">
		<input type="button" class="w_book" value="읽고 싶은책" onclick="">
		<input type="button" class="n_book" value="읽은 책" onclick="">
		<div class="b1"></div>
		<div class="b2"></div>
		<div class="b3"></div>
		<div class="n1">
				<img src="resources/images/book-3.png">
		</div>
		<div class="n2"></div>
		<div class="n3"></div>
		<div class="n4"></div>
		<div class="n5"></div>
		<div class="n6"></div>
		<div class="n7"></div>
		<div class="n8"></div>
		<div class="n9"></div>
		<div class="n10"></div>
		<div class="n11"></div>
		<div class="n12"></div>
		<div class="n13"></div>
		<div class="n14"></div>
		<div class="n15"></div>
	</div>
	<div class="d2">
		<div class="a1">
			<div class="m1">월별 통계</div>
		</div>
		<div class="a2">
			<div class="m2">년별 통계</div>
		</div>
	</div>
	<div class="d3">캘린더</div>

	<div class="login_menu">
		<!-- 서재 / 커뮤니티 / 내 서재 버튼 div -->
		<input type="button" class="login_btn" value="서재" onclick="">
		<input type="button" class="login_btn" value="커뮤니티" onclick="">
		<input type="button" class="login_btn" value="책 소개"
			onclick="location.href='bookintro.do'">
		<div class="login_img">
			<img src="resources/images/kjh.png" style="border-radius: 100%;">
		</div>
		<div class="login_name">
			<!-- 설정 / 쪽지 버튼, 닉네임 -->
			<input type="button" class="login_mini_btn" value="설정" onclick="">
			<input type="button" class="login_mini_btn" value="쪽지" onclick="">
			<div class="login_nick">닉네임</div>
		</div>
		<div>
			<!-- 읽은 책 / 읽고 싶은 책 -->
			<div class="read_book">
				읽은 책 <br> <span style="font-size: 25px;">몇 권</span>
			</div>
			<div class="want_book">
				읽고 싶은 책 <br> <span style="font-size: 25px;">몇 권</span>
			</div>
		</div>
		<div class="attainment">
			<!-- 목표 달성도 -->
			목표달성도
		</div>
	</div>



</body>
</html>