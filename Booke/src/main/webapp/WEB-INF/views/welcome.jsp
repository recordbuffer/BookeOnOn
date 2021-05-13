<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>welcome Book e On&On</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/footer.css">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

<script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
<df-messenger
  intent="WELCOME"
  chat-title="Book_e"
  agent-id="8d5764d9-775f-4a1e-b9d7-5827de9246a1"
  language-code="ko"
></df-messenger>


</head>
<!-- body -->
<body class="main-layout home_page"
	style="background-color: #f5f5f5;">

	<!-- header inner -->
	<div class="header">
		<div class="container1">
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
				<div class="full">
					<div class="center-desk">
						<div class="logo">
							<a href="#"><img src="resources/images/logo1.png" alt="#"
								style="margin: 0px 0px 0px 100px;"></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
				<div class="menu-area">
					<div class="limit-box menu-area-main">
						<a href="loginform.do"><img
							src="resources/images/top-icon.png" alt="#"
							style="margin: 5px 50px 0px 100px;" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- slider section -->

	<section class="slider_section">
		<div id="myCarousel" class="carousel slide banner-main"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="first-slide" src="resources/images/wellcome1.jpg"
						alt="First slide" style="opacity: 0.7;">
					<div class="container">
						<div class="carousel-caption relative">
							<h1>
								양서는 처음 읽은 때에는<br>
								새 친구를 얻은 것과 같고,<br>
								전에 정독했던 책을 다시 읽을 때에는<br>
								옛날 친구를 만나는 것과 같다.<br><br>
								-골드 스미스
							</h1>
							<div class="button_section">
								<a class="main_bt" href="#">뭘 넣지?</a>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="second-slide" src="resources/images/wellcome2.jpg"
						alt="Second slide" style="opacity: 0.7;">
					<div class="container">
						<div class="carousel-caption relative">
							<h1>
								책은 인생의 험준한 바다를<br>
								항해하는데 도움이 되게끔<br>
								남들이 마련해 준 나침반이요,<br>
								망원경이요, 육분의요, 도표이다.<br><br>
								-제시 리 베넷
							</h1>
							<div class="button_section">
								<a class="main_bt" href="#">뭘 넣지?</a>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="third-slide" src="resources/images/wellcome3.jpg"
						alt="Third slide" style="opacity: 0.7;">
					<div class="container">
						<div class="carousel-caption relative">
							<h1>
								내가 인생을 안 것은<br>
								사람과 접촉했기 때문이 아니라<br>
								책과 접촉했기 때문이다.<br><br>
								-아나톨 프랑스
							</h1>
							<div class="button_section">
								<a class="main_bt" href="#">뭘 넣지?</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#myCarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#myCarousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</section>

	<!-- team-section -->
	<div class="brown"></div>
	<div class="site-section border-bottom" id="team-section">
		<div class="container">
			<div class="row justify-content-center mb-5">
				<div class="col-md-7 text-center">
					<br> <br> <br>
					<h2 class="text-black h1 site-section-heading">Our Team</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<div class="person text-center">
						<img src="resources/images/psm.png" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>팀장 박소미</h3>
						<p class="position text-muted">구현 기능 소개</p>
						<p class="mb-4">코멘트</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<div class="person text-center">
						<img src="resources/images/cjw.png" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>최정우</h3>
						<p class="position text-muted">구현 기능 소개</p>
						<p class="mb-4">코멘트</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="300">
					<div class="person text-center">
						<img src="resources/images/csw.png" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>채승원</h3>
						<p class="position text-muted">구현 기능 소개</p>
						<p class="mb-4">코멘트</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<div class="person text-center">
						<img src="resources/images/kjh.png" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>김주현</h3>
						<p class="position text-muted">구현 기능 소개</p>
						<p class="position text-muted">코멘트</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<div class="person text-center">
						<img src="resources/images/msj.png" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>문서정</h3>
						<p class="position text-muted">구현 기능 소개</p>
						<p class="position text-muted">코멘트</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="300">
					<div class="person text-center">
						<img src="resources/images/mss.png" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>민성수</h3>
						<p class="position text-muted">구현 기능 소개</p>
						<p class="position text-muted">코멘트</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Javascript files-->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.0.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/plugin.js"></script>
	<!-- sidebar -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>