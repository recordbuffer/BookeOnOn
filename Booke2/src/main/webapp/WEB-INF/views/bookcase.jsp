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

<link rel="stylesheet" href="resources/css/bookcase.css" type="text/css">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/mainpage.css">
<link rel="stylesheet" href="resources/css/bookcase.css">
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>

	<!-- Header -->
	<header class="bg-primary py-5 mb-5" id="mainhd">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12" id="hddiv">
					<h1 class="display-4 text-white mt-5 mb-2">인기 도서 BEST</h1>
					<p class="lead mb-5 text-white-50">광고</p>
				</div>
			</div>
		</div>
	</header>




	<!-- Page Content -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-7 offset-md-1">
				<div class="container">
					<div class="row" id="cdb">
						<div class="bcaseframe">
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
						</div>
						<div class="bcaseframe2">
							<div class="d2">
								<div class="a1">
									<div class="m1">월별 통계</div>
								</div>
								<div class="a2">
									<div class="m2">년별 통계</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>


			<div class="col-md-2">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="login_menu">
								<!-- 서재 / 커뮤니티 / 내 서재 버튼 div -->
								<div class="login_img">
									<img src="resources/images/kjh.png"
										style="border-radius: 100%;">
								</div>
								<div class="login_name">
									<!-- 설정 / 쪽지 버튼, 닉네임 -->
									<a href="setting.do"><i class="bi bi-gear-fill"
										style="font-size: 2.5rem; color: white; position: absolute; left: 160px;"></i></a>
									<a href="msg.do"><i class="bi bi-chat-text-fill"
										style="font-size: 2.5rem; color: white; position: relative; left: 110px;"></i></a>
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
							<div class="d3">
								<input type="button" value="캘린더"
									onclick="location.href='bcaseCal.do'">
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>