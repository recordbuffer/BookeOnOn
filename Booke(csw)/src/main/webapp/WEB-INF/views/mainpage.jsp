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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<link rel="stylesheet" href="resources/css/footer.css">
	<link rel="stylesheet" href="resources/css/mainpage.css">

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

	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="container">
					<div class="row" id="cdb">
						<div class="best_seller">
							<div class="best_category text-center">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="best_btnradio"
										id="btnradio1" autocomplete="off" checked> <label
										class="btn btn-outline-primary" for="btnradio1">전체 </label> <input
										type="radio" class="btn-check" name="best_btnradio"
										id="btnradio2" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio2">문학 </label> <input
										type="radio" class="btn-check" name="best_btnradio"
										id="btnradio3" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio3">소설 </label> <input
										type="radio" class="btn-check" name="best_btnradio"
										id="btnradio4" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio4">만화책 </label> <input
										type="radio" class="btn-check" name="best_btnradio"
										id="btnradio5" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio5">교재 </label>
								</div>
							</div>
							<div class="best_book bb_1 text-center">
								커버
								<div class="bb_1_star">별점</div>
							</div>
							<div class="best_book bb_2 text-center">
								커버
								<div class="bb_2_star text-center">별점</div>
							</div>
							<div class="best_book bb_3 text-center">
								커버
								<div class="bb_3_star text-center">별점</div>
							</div>
							<div class="best_book bb_4 text-center">
								커버
								<div class="bb_4_star text-center">별점</div>
							</div>
							<div class="best_book bb_5 text-center">
								커버
								<div class="bb_5_star text-center">별점</div>
							</div>
						</div>
						<div class="col-sm-12 new_seller">
							<div class="new_category text-center">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="new_btnradio"
										id="btnradio6" autocomplete="off" checked> <label
										class="btn btn-outline-primary" for="btnradio6">전체 </label> <input
										type="radio" class="btn-check" name="new_btnradio"
										id="btnradio7" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio7">문학 </label> <input
										type="radio" class="btn-check" name="new_btnradio"
										id="btnradio8" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio8">소설 </label> <input
										type="radio" class="btn-check" name="new_btnradio"
										id="btnradio9" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio9">만화책 </label> <input
										type="radio" class="btn-check" name="new_btnradio"
										id="btnradio10" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio10">교재 </label>
								</div>
							</div>
							<div class="new_book nb_1 text-center">
								커버
								<div class="nb_1_star text-center">별점</div>
							</div>
							<div class="new_book nb_2 text-center">
								커버
								<div class="nb_2_star text-center">별점</div>
							</div>
							<div class="new_book nb_3 text-center">
								커버
								<div class="nb_3_star text-center">별점</div>
							</div>
							<div class="new_book nb_4 text-center">
								커버
								<div class="nb_4_star text-center">별점</div>
							</div>
							<div class="new_book nb_5 text-center">
								커버
								<div class="nb_5_star text-center">별점</div>
							</div>
						</div>
						<br> <br>
						<div class="noting">책관련 동영상이나 회원 데이터 순위</div>
					</div>
				</div>

			</div>
			<div class="col-sm-4">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="login_menu">
								<!-- 서재 / 커뮤니티 / 내 서재 버튼 div -->
								<input type="button" class="login_btn" value="서재" onclick="location.href='community.do'">
								<input type="button" class="login_btn" value="커뮤니티" onclick="location.href='community2.do'">
								<input type="button" class="login_btn" value="책 소개" onclick="location.href='bookintro.do'">
								<div class="login_img">
									<img src="resources/images/kjh.png"
										style="border-radius: 100%;">
								</div>
								<div class="login_name">
									<!-- 설정 / 쪽지 버튼, 닉네임 -->
									<input type="button" class="login_mini_btn" value="설정"
										onclick=""> <input type="button"
										class="login_mini_btn" value="쪽지" onclick="">
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
							<div class="friend">
								<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
									integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
									crossorigin="anonymous"></script>
								<script
									src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
									integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
									crossorigin="anonymous"></script>
								<script
									src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
									integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
									crossorigin="anonymous"></script>
								<div id="demo" class="carousel slide" data-ride="carousel">
									<div class="carousel-inner">
										<!-- 슬라이드 쇼 -->
										<div class="carousel-item active">
											<!--가로-->
											<img class="d-block w-100" src="resources/images/slide.jpg"
												alt="First slide">
											<div class="carousel-caption d-none d-md-block">
												<div class="circle friend1"><h6 class="nickname">친구1</h6></div>
												<div class="circle friend2"><h6 class="nickname">친구2</h6></div>
												<div class="circle friend3"><h6 class="nickname">친구3</h6></div>
											</div>
										</div>
										<div class="carousel-item">
											<img class="d-block w-100" src="resources/images/slide.jpg"
												alt="Second slide">
											<div class="carousel-caption d-none d-md-block">
												<div class="circle friend4"><h6 class="nickname">친구4</h6></div>
												<div class="circle friend5"><h6 class="nickname">친구5</h6></div>
												<div class="circle friend6"><h6 class="nickname">친구6</h6></div>
											</div>
										</div>
										<div class="carousel-item">
											<img class="d-block w-100" src="resources/images/slide.jpg"
												alt="Third slide">
											<div class="carousel-caption d-none d-md-block">
												<div class="circle friend7"><h6 class="nickname">친구7</h6></div>
												<div class="circle friend8"><h6 class="nickname">친구8</h6></div>
												<div class="circle friend9"><h6 class="nickname">친구9</h6></div>
											</div>
										</div>
										<!-- / 슬라이드 쇼 끝 -->
										<!-- 왼쪽 오른쪽 화살표 버튼 -->
										<a class="carousel-control-prev" href="#demo"
											data-slide="prev"> <span
											class="carousel-control-prev-icon" aria-hidden="true"></span>
											<!-- <span>Previous</span> -->
										</a> <a class="carousel-control-next" href="#demo"
											data-slide="next"> <span
											class="carousel-control-next-icon" aria-hidden="true"></span>
											<!-- <span>Next</span> -->
										</a>
										<!-- / 화살표 버튼 끝 -->
										<!-- 인디케이터 -->
										<ul class="carousel-indicators">
											<li data-target="#demo" data-slide-to="0" class="active"></li>
											<!--0번부터시작-->
											<li data-target="#demo" data-slide-to="1"></li>
											<li data-target="#demo" data-slide-to="2"></li>
										</ul>
										<!-- 인디케이터 끝 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br><br><br><br>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>