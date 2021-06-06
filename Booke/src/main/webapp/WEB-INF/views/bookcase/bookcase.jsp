<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	
<script src="/book/resources/js/chartjs/dist/chart.js"></script>

<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/mainpage.css">
<link rel="stylesheet" href="resources/css/bookcase.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"src = "js/bookcase.js"></script>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
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
								<input type="button" class="w_book" value="읽고 싶은책" onclick="location.href='selectwbook.do';">
								<input type="button" class="n_book" value="읽은 책" onclick="location.href='selectrbook.do';">
								<div class="b1"></div>
								<div class="b2"></div>
								<div class="b3"></div>
								<c:forEach items="${bookList}" var="bookList" varStatus="status">
									<div class="n${status.index}${bookList[Status.index]}"><img src="<c:out value='${bookList.b_cover}'/>"></div>
								</c:forEach>
								<input type="button" class="next" onclick="next();">
								<button class="prev" onclick="prev();"><img src="./resources/images/prev.png"></button>
								<button class="next" onclick="next();"><img src="./resources/images/next.png"></button>
							</div>
						</div>
						<div class="bcaseframe2">
							<div class="d2">
								<div class="a1">
									<div class="m1">월별 통계</div>
									<div class="container-div">
										<div class="controls-div">

											<select id="yyyy" name="yyyy">
												<option value="2015">2015</option>
												<option value="2016">2016</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
												<option value="2020">2020</option>
												<option value="2021">2021</option>
											</select>
											<button id="btnChart" name="btnChart">확인</button>


										</div>
										<div class="chart-container"
											style="position: relative; width: 85vw">
											<canvas id="myChart" width="867" height="260"></canvas>
										</div>
									</div>
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
										<span style="font-size: 18pt;">${cntFList}<a href="frd.do"></a></span><span style="font-size: 16pt;"> 명</span>
										<a href="fsearch.do"><i class="bi bi-plus-circle" style="font-size: 1.8rem; color: white; position: relative; left: 80px;"></i></a>
										<a href="msginsert.do"><i class="bi bi-chat-text-fill" style="font-size: 1.8rem; color: white; position: relative; left: 90px;"></i></a>
									</div>
								</div>
								</div>
								<div style="color:white; text-align:center; transform: translate(0px, -30px);">
									<div style="font-size:20pt;"><span>${r_book}</span><span style="font-size: 19pt;"> 권</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>${w_book} 권</span></div>
									<div style="transform: translate(3px,7px);"><span>읽은 책</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>읽고 싶은 책</span></div>
								</div>
								<!-- 목표 달성도 -->
								<div class="attainment" style="transform: translate(0px, 220px); height: 155px;">
									목표달성도
								</div>
							</div>			
							
								
							<div class="d3">
								<div class="d-grid gap-2">
									<input type="button" class="btn btn-outline-dark" value="Calendar" style="height: 60px;" onclick="location.href='bcaseCal.do'">
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
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>