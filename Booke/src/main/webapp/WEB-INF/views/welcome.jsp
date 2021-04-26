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
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<style type="text/css">
.logo{
	width: 60px;
	height: 50px;
}

.brown {
	width: 100%;
	height: 100px;
	background-color: rgb(119, 109, 097);
}

.chatbot {
	width: 100%;
	height: 400px;
	border: 1px solid black;
}
</style>
</head>
<!-- body -->
<body class="main-layout home_page" style="background-color: rgb(181, 227, 216);">
	<!-- header -->
	<header>
		<!-- header inner -->
		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
						<div class="full">
							<div class="center-desk">
								<div class="logo">
									<a href="index.html"><img src="resources/images/logo.png" alt="#" id="logo"></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
						<div class="menu-area">
							<div class="limit-box">
								<nav class="main-menu">
									<ul class="menu-area-main">
										<li class="mean-last"><a
											onclick="location.href='main.do'"><img
												src="resources/images/top-icon.png" /></a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	
	<!-- slider section -->
	
	<section class="slider_section">
		<div id="myCarousel" class="carousel slide banner-main"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="first-slide" src="resources/images/wellcome1.jpg"
						alt="First slide" style="opacity: 0.5;">
					<div class="container">
						<div class="carousel-caption relative">
							<h1>
								The Best Libraries That<br> Every Book Lover Must<br>
								Visit!
							</h1>
							<p>
								adipiscing elit, sed do eiusmod tempor incididunt ut<br>
								labore et dolore magna aliqua. Ut enim ad minim<br> veniam,
								quis nostrud exercitation
							</p>
							<div class="button_section">
								<a class="main_bt" href="#">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="second-slide" src="resources/images/wellcome2.jpg"
						alt="Second slide" style="opacity: 0.5;">
					<div class="container">
						<div class="carousel-caption relative">
							<h1>
								The Best Libraries That<br> Every Book Lover Must<br>
								Visit!
							</h1>
							<p>
								adipiscing elit, sed do eiusmod tempor incididunt ut<br>
								labore et dolore magna aliqua. Ut enim ad minim<br> veniam,
								quis nostrud exercitation
							</p>
							<div class="button_section">
								<a class="main_bt" href="#">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="third-slide" src="resources/images/wellcome3.jpg"
						alt="Third slide" style="opacity: 0.5;">
					<div class="container">
						<div class="carousel-caption relative">
							<h1>
								The Best Libraries That<br> Every Book Lover Must<br>
								Visit!
							</h1>
							<p>
								adipiscing elit, sed do eiusmod tempor incididunt ut<br>
								labore et dolore magna aliqua. Ut enim ad minim<br> veniam,
								quis nostrud exercitation
							</p>
							<div class="button_section">
								<a class="main_bt" href="#">Read More</a>
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
					<br>
					<br>
					<br>
					<h2 class="text-black h1 site-section-heading">Our Team</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<div class="person text-center">
						<img src="resources/images/person_12.jpg" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>John Rooster</h3>
						<p class="position text-muted">Co-Founder, President</p>
						<p class="mb-4">민성수씨. Nisi at consequatur unde molestiae
							quidem provident voluptatum deleniti quo iste error eos est
							praesentium distinctio cupiditate tempore suscipit inventore
							deserunt tenetur.</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<div class="person text-center">
						<img src="resources/images/person_12.jpg" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>Tom Sharp</h3>
						<p class="position text-muted">Co-Founder, COO</p>
						<p class="mb-4">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Nisi at consequatur unde molestiae quidem
							provident voluptatum deleniti quo iste error eos est praesentium
							distinctio cupiditate tempore suscipit inventore deserunt
							tenetur.</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="300">
					<div class="person text-center">
						<img src="resources/images/person_12.jpg" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>Winston Hodson</h3>
						<p class="position text-muted">Marketing</p>
						<p class="mb-4">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Nisi at consequatur unde molestiae quidem
							provident voluptatum deleniti quo iste error eos est praesentium
							distinctio cupiditate tempore suscipit inventore deserunt
							tenetur.</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="100">
					<div class="person text-center">
						<img src="resources/images/person_12.jpg" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>John Rooster</h3>
						<p class="position text-muted">Co-Founder, President</p>
						<p class="mb-4">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Nisi at consequatur unde molestiae quidem
							provident voluptatum deleniti quo iste error eos est praesentium
							distinctio cupiditate tempore suscipit inventore deserunt
							tenetur.</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="200">
					<div class="person text-center">
						<img src="resources/images/person_12.jpg" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>John Rooster</h3>
						<p class="position text-muted">Co-Founder, President</p>
						<p class="mb-4">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Nisi at consequatur unde molestiae quidem
							provident voluptatum deleniti quo iste error eos est praesentium
							distinctio cupiditate tempore suscipit inventore deserunt
							tenetur.</p>

					</div>
				</div>
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="fade"
					data-aos-delay="300">
					<div class="person text-center">
						<img src="resources/images/person_12.jpg" alt="Image"
							class="img-fluid rounded-circle w-50 mb-5">
						<h3>John Rooster</h3>
						<p class="position text-muted">Co-Founder, President</p>
						<p class="mb-4">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Nisi at consequatur unde molestiae quidem
							provident voluptatum deleniti quo iste error eos est praesentium
							distinctio cupiditate tempore suscipit inventore deserunt
							tenetur.</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="chatbot">챗봇</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<!-- end footer -->
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