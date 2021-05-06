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

<link rel="stylesheet" href="resources/css/community.css"
	type="text/css">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
	


<link rel="stylesheet" href="resources/css/footer.css">




</head>

<body>

	<jsp:include page="headerCommunity.jsp"></jsp:include>


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


		<div class="container">
			<div class="row" id="cdb">
				<div class="col-sm-12">

					<h1>
						&nbsp;&nbsp;<span class="badge"
							style="font-size: 120%; background-color: rgb(181, 227, 216);">책마루</span>
						<span class="btn-group" role="group" aria-label="Basic example"
							style="left: 60%;">

							<button type="button" class="btn"
								style="background-color: rgb(119, 109, 097)"
								onclick="location.href='communityMain.do'">커뮤니티 홈</button>
							<button type="button" class="btn"
								style="background-color: rgb(119, 109, 097)">설정</button>
							<button type="button" class="btn"
								style="background-color: rgb(119, 109, 097)">편집</button>
						</span>
					</h1>
				</div>
			</div>
		</div>
	</div>




	<div class="container">
		<div class="wrapper wrapper-content animated fadeInRight">

			<div class="col-lg-12">
				<div class="ibox float-e-margins">
					<div class="ibox-content">
						<strong>Group Chat room </strong>
					</div>
				</div>
			</div>


			<div class="col-lg-12">
				<div class="ibox chat-view">
					<div class="ibox-title">
						<small class="pull-right text-muted">Last message: Mon Apl
							29 2021 - 18:39:23</small> Chat room panel
					</div>
					<div class="ibox-content">
						<div class="container">
							<div class="row">
								<div class="col-lg-8 ">
									<div class="chat-discussion">

										<div class="chat-message left">
											<img class="message-avatar"
												src="resources/images/psm.png"
												alt="">
											<div class="message">
												<a class="message-author" href="#"> 박소미 님 </a> <span
													class="message-date"> Thu Apl 29 2021 - 08:39:23 </span> <span
													class="message-content"> Lorem ipsum dolor sit amet,
													consectetuer adipiscing elit, sed diam nonummy nibh euismod
													tincidunt ut laoreet dolore magna aliquam erat volutpat. </span>
											</div>
										</div>
										<div class="chat-message right">
											<img class="message-avatar"
												src="resources/images/csw.png"
												alt="">
											<div class="message">
												<a class="message-author" href="#"> 채승원 님 </a> <span
													class="message-date"> Thu Apl 29 2021 - 11:12:36 </span> <span
													class="message-content"> Many desktop publishing
													packages and web page editors now use Lorem Ipsum as their
													default model text, and a search for 'lorem ipsum' will
													uncover. </span>
											</div>
										</div>
										<div class="chat-message right">
											<img class="message-avatar"
												src="resources/images/kjh.png"
												alt="">
											<div class="message">
												<a class="message-author" href="#"> 김주현 님 </a> <span
													class="message-date"> Thu Apl 29 2021 - 11:12:39 </span> <span
													class="message-content"> There are many variations
													of passages of Lorem Ipsum available, but the majority have
													suffered alteration. </span>
											</div>
										</div>
										<div class="chat-message left">
											<img class="message-avatar"
												src="resources/images/psm.png"
												alt="">
											<div class="message">
												<a class="message-author" href="#"> 박소미 님 </a> <span
													class="message-date"> Thu Apl 29 2021 - 11:13:36 </span> <span
													class="message-content"> All the Lorem Ipsum
													generators on the Internet tend to repeat predefined chunks
													as necessary, making this the first true generator on the
													Internet. It uses a dictionary of over 200 Latin words. </span>
											</div>
										</div>
										<div class="chat-message right">
											<img class="message-avatar"
												src="resources/images/mss.png"
												alt="">
											<div class="message">
												<a class="message-author" href="#"> 민성수 님 </a> <span
													class="message-date"> Fri Apl 30 2021 - 11:12:36 </span> <span
													class="message-content"> All the Lorem Ipsum
													generators on the Internet tend to repeat predefined chunks
													as necessary, making this the first true generator on the
													Internet. It uses a dictionary of over 200 Latin words. </span>
											</div>
										</div>

									</div>

								</div>

								<div class="col-lg-3 offset-col-lg-0">
									<div class="chat-users">


										<div class="users-list">
											<div class="chat-user">
												<img class="chat-avatar"
													src="resources/images/psm.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">박소미 님</a>
												</div>
											</div>
											<div class="chat-user">
												<img class="chat-avatar"
													src="resources/images/msj.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">문서정 님</a>
												</div>
											</div>
											<div class="chat-user">
												<span class="pull-right label label-primary">Online</span> <img
													class="chat-avatar"
													src="resources/images/mss.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">민성수 님</a>
												</div>
											</div>
											<div class="chat-user">
												<span class="pull-right label label-primary">Online</span> <img
													class="chat-avatar"
													src="resources/images/csw.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">채승원 님</a>
												</div>
											</div>
											<div class="chat-user">
												<img class="chat-avatar"
													src="resources/images/cjw.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">최정우 님</a>
												</div>
											</div>
											<div class="chat-user">
												<img class="chat-avatar"
													src="resources/images/kjh.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">김주현 님</a>
												</div>
											</div>
											<div class="chat-user">
												<img class="chat-avatar"
													src="resources/images/psm.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">안소미 님</a>
												</div>
											</div>
											<div class="chat-user">
												<span class="pull-right label label-primary">Online</span> <img
													class="chat-avatar"
													src="resources/images/psm.png"
													alt="">
												<div class="chat-user-name">
													<a href="#">강소미 님</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-12">
								<div class="chat-message-form">
									<div class="form-group">
										<textarea class="form-control message-input" name="message"
											placeholder="Enter message text and press enter"
											style="resize: none;"></textarea>
									</div>
								</div>
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>