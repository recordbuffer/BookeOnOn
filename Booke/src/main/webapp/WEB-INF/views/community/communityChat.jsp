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

<link rel="stylesheet" href="resources/css/communityMain.css" type="text/css">

<link rel="stylesheet" href="resources/css/communityChat.css" type="text/css">


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

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>



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
							style="font-size: 120%; background-color: rgb(243, 193, 188);">Study</span>
						<span class="btn-group" role="group" aria-label="Basic example"
							style="left: 60%;">

							<button type="button" class="btn"
								style="background-color: rgb(196, 175, 173)"
								onclick="location.href='communityMain.do'">커뮤니티 홈</button>
							<button type="button" class="btn"
								style="background-color: rgb(196, 175, 173)">설정</button>
							<button type="button" class="btn"
								style="background-color: rgb(196, 175, 173)">편집</button>
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
						<small class="float-right text-muted">Last message: Mon Apl
							29 2021 - 18:39:23</small> Chat room panel
					</div>
					<div class="ibox-content">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-8 ">
									<div id="messageArea">
										<div>${nickname}님이 입장하셨습니다. </div>
									</div>

								</div>

								<div class="col-lg-4">
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
									<input type="text" id="message" style="width: 1000px; height:100px;" placeholder="메세지를 입력하세요"/>
									<input type="button" id="sendBtn" value="submit" class="btn btn-dark btn-lg"/>
																				
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
	<jsp:include page="footerCommunity.jsp"></jsp:include>
	<script type="text/javascript">
	
	$("#sendBtn").click(function() {
		sendMessage();
		
		$('#message').val('')
	});

	let sock = new SockJS("http://localhost:8787/book/chatt.do/");
	
	sock.onmessage = onMessage;
	
	sock.onclose = onClose;
	// 메시지 전송
	function sendMessage() {
		sock.send($("#message").val());
	}
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = msg.data;
		var nickname = "${nickname}"
		$("#messageArea").append(" : " + data + "<br/>");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		$("#messageArea").append("연결 끊김");

	}
</script>
</body>
</html>