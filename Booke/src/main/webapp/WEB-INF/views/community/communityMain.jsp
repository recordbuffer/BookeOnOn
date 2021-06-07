<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<link rel="stylesheet" href="resources/css/communityMain.css">

</head>

<body>

	<jsp:include page="headerCommunity.jsp"></jsp:include>


	<header class="bg-primary py-5 mb-5" id="mainhd">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12" id="hddiv">
					<h1 class="display-4 text-white mt-5 mb-2">커뮤니티 공간</h1>
					<p class="lead mb-5 text-white-50"></p>
				</div>
			</div>
		</div>
	</header>


	<!-- Page Content -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-7 offset-md-1">
				<div class="container" id="img-thumbnaail_border">
					<div class="row" id="cdb">
						<div class="col-sm-12">

							<h1>
								&nbsp;&nbsp;<span class="badge"
									style="font-size: 100%; background-color: rgb(243, 193, 188); ">커뮤니티</span>
								<span class="btn-group" role="group" aria-label="Basic example"
									style="left: 55%;">
					
									<button type="button" class="btn"
										style="background-color: rgb(196, 175, 173) " 
										onclick="location.href='communityList.do'">List로 보기</button>
									
								</span>
							</h1>

							<div class="col-mb-12">
								<div class="row row-cols-1 row-cols-md-4 g-4">
								
									<c:forEach items="${list }" var="board">
																	
									<div class="col">
										<div class="card border-dark mb-3 "
											style="width: 15rem; height: 18rem">
											<div class="card-header bg-transparent border-dark">${board.bk_no}</div>
											<div class="card-body text-dark">
												<h5 class="card-title">${board.bk_name}</h5>
												<p class="card-text">${board.bk_introduce }</p>
											</div>
											<div class="card-footer bg-transparent border-dark">
											<button type="button" class="btn btn-dark btn-sm "
											onclick="location.href='communityChat.do'">입장하기</button></div>
										</div>
									</div>
									
									</c:forEach>
									
									
									<div></div>

								</div>
							</div>

						</div>

						<br> <br>
						<div class="col-sm-12"></div>
						<br> <br>
						<div class="col-sm-12"></div>
					</div>
				</div>
			</div>

			<div class="col-md-2">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="login_menu">
								<!-- 서재 / 커뮤니티 / 내 서재 버튼 div -->

								<div>
								<!-- 계정에 따라 프로필 -->
								<c:choose>
								<c:when test="${user.be_role == 'ADM' }">
									<div class="login_img">
									<img src="resources/images/kjh.png" style="border-radius: 100%;"></div>
								</c:when>
								<c:when test="${user.be_role == 'L3' }">
									<div class="login_img">
									<img src="resources/images/L3.png" style="transform: translate(23px, 5px); border-radius: 100%; height: 110px;"></div>
								</c:when>
								<c:when test="${user.be_role == 'L2' }">
									<div class="login_img">
									<img src="resources/images/L2.png" style="border-radius: 100%;"></div>
								</c:when>
								<c:otherwise>
									<div class="login_img">
									<img src="resources/images/L1.png" style="border-radius: 100%; height: 100px; transform: translate(25px, 12px);""></div>
								</c:otherwise>
								</c:choose>
								<div class="login_name">
									<!-- 설정 / 쪽지 버튼, 닉네임 -->
									<a href="setting.do"><i class="bi bi-gear-fill" style="font-size: 2.2rem; color: white; position: absolute; left: 160px; transform: translate(5px, 10px);"></i></a>
									<div style="transform: translate(-10px, 58px);">
										<p style="font-size: 15pt;">@ ${user.be_id }</p>
										<p style="font-size: 25pt;">${user.be_nn }<span style="font-size: 19pt;">님</span></p>
										<input type="button" class="btn btn-outline-dark" value="LOGOUT" style="transform: translate(130px, -58px);" onclick="location.href='logout.do'">
									</div>
									<div style="transform: translate(-124px,30px);  color:white; ">
										<span style="font-size: 20pt;">친구</span >&nbsp;&nbsp;&nbsp;
										<span style="font-size: 18pt;">${friendcount }<a href="frd.do"></a></span><span style="font-size: 16pt;"> 명</span>
										<a href="fsearch.do"><i class="bi bi-plus-circle" style="font-size: 1.8rem; color: white; position: relative; left: 80px;"></i></a>
										<a href="msg.do"><i class="bi bi-chat-text-fill" style="font-size: 1.8rem; color: white; position: relative; left: 90px;"></i></a>
									</div>
								</div>
								</div>
								<div style="color:white; text-align:center; transform: translate(0px, -30px);">
									<div style="font-size:20pt;"><span>${r_book}</span><span style="font-size: 19pt;"> 권</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>${w_book} 권</span></div>
									<div style="transform: translate(3px,7px);"><span>읽은 책</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>읽고 싶은 책</span></div>
								</div>
								
								<div class="attainment"
									style="text-align: center; vertical-align: middle; horizen-align: middle; line-height: 50px;">
									<!-- 목표 달성도 -->
									<br>
									<button type="button" class="btn btn-lg" style="background-color: rgb(243, 193, 188)"
									 onclick="location.href='cinsertform.do'">+ 소통방 개설</button>
									 
									<!-- Button trigger modal -->
									
									<%-- <button type="button" class="btn btn-lg"
										data-bs-toggle="modal" data-bs-target="#myModal"
										style="background-color: rgb(243, 193, 188)">+ 소통방 개설</button>
									<jsp:include page="modal.jsp"></jsp:include> --%>	
									
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
</body>
</html>