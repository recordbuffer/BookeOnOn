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
    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
<!-- JavaScript Bundle with Popper -->
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
    crossorigin="anonymous"></script>
    

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

	<!-- API 연습 -->
	<script src="https://code.jquery.com/jquery-3.4.1.js" type="text/javascript"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
	 <script type="text/javascript">
	 $.ajax({
         method: "GET",
         url: "https://dapi.kakao.com/v3/search/book?target=title",
         data: { 
             query: "문학",
             sort: "accuracy",
             page: 3,
             size: 50       
         },
         headers: { Authorization: "KakaoAK 7454d95d609df58bfc2bf0407895a1c0" }
     })
         .done(function (msg){
             console.log(msg);
             $("#best1").append("<img src = '" + msg.documents[0].thumbnail + "'/>");
             $("#best2").append("<img src = '" + msg.documents[1].thumbnail + "'/>");
             $("#best3").append("<img src = '" + msg.documents[2].thumbnail + "'/>");
             $("#best4").append("<img src = '" + msg.documents[3].thumbnail + "'/>");
             $("#best5").append("<img src = '" + msg.documents[4].thumbnail + "'/>");
             $("#new1").append("<img src = '" + msg.documents[5].thumbnail + "'/>");
             $("#new2").append("<img src = '" + msg.documents[6].thumbnail + "'/>");
             $("#new3").append("<img src = '" + msg.documents[7].thumbnail + "'/>");
             $("#new4").append("<img src = '" + msg.documents[8].thumbnail + "'/>");
             $("#new5").append("<img src = '" + msg.documents[9].thumbnail + "'/>");
         });
</script>

	<!-- Page Content -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-7 offset-md-1">
				<div class="container">
					<div class="row" id="cdb">
						<div class="best_seller">
							<div class="best_category text-right">
							<div class="text-left" style="position: absolute; font-size: 30px; margin: 8px;">베스트셀러</div>
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
							<div class="best_book bb_1 text-center" id="best1">
								<div class="bb_1_star text-center">별점</div>
							</div>
							<div class="best_book bb_2 text-center"  id="best2">
								<div class="bb_2_star text-center">별점</div>
							</div>
							<div class="best_book bb_3 text-center"  id="best3">
								<div class="bb_3_star text-center">별점</div>
							</div>
							<div class="best_book bb_4 text-center"  id="best4">
								<div class="bb_4_star text-center">별점</div>
							</div>
							<div class="best_book bb_5 text-center"  id="best5">
								<div class="bb_5_star text-center">별점</div>
							</div>
						</div>
						<div class="col-sm-12 new_seller">
							<div class="new_category text-right">
							<div class="text-left" style="position: absolute; font-size: 30px; margin: 8px;">신간</div>
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
							<div class="new_book nb_1 text-center"  id="new1">
								<div class="nb_1_star text-center">별점</div>
							</div>
							<div class="new_book nb_2 text-center" id="new2">
								<div class="nb_2_star text-center">별점</div>
							</div>
							<div class="new_book nb_3 text-center" id="new3">
								<div class="nb_3_star text-center">별점</div>
							</div>
							<div class="new_book nb_4 text-center" id="new4">
								<div class="nb_4_star text-center">별점</div>
							</div>
							<div class="new_book nb_5 text-center" id="new5">
								<div class="nb_5_star text-center">별점</div>
							</div>
						</div>
						<br> <br>
							<div class="text-left" id="youtube">책추천 영상</div><br>
							<div class="noting"><br><br>
								<iframe width="850" height="470"
									src="https://www.youtube.com/embed/eHS-VaOC5oY"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen>
								</iframe>
							</div>
						</div>
					</div><br>

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
										<a href="msg.do"><i class="bi bi-chat-text-fill" style="font-size: 1.8rem; color: white; position: relative; left: 90px;"></i></a>
									</div>
								</div>
								</div>
								<div style="color:white; text-align:center; transform: translate(0px, -30px);">
									<div style="font-size:20pt;"><span>42</span><span style="font-size: 19pt;"> 권</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>143 권</span></div>
									<div style="transform: translate(3px,7px);"><span>읽은 책</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>읽고 싶은 책</span></div>
								</div>
								<!-- 목표 달성도 -->
								<div class="attainment" style="transform: translate(0px, 220px); height: 155px;">
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
												<div class="circle friend1">
													<h6 class="nickname">친구1</h6>
												</div>
												<div class="circle friend2">
													<h6 class="nickname">친구2</h6>
												</div>
												<div class="circle friend3">
													<h6 class="nickname">친구3</h6>
												</div>
											</div>
										</div>
										<div class="carousel-item">
											<img class="d-block w-100" src="resources/images/slide.jpg"
												alt="Second slide">
											<div class="carousel-caption d-none d-md-block">
												<div class="circle friend4">
													<h6 class="nickname">친구4</h6>
												</div>
												<div class="circle friend5">
													<h6 class="nickname">친구5</h6>
												</div>
												<div class="circle friend6">
													<h6 class="nickname">친구6</h6>
												</div>
											</div>
										</div>
										<div class="carousel-item">
											<img class="d-block w-100" src="resources/images/slide.jpg"
												alt="Third slide">
											<div class="carousel-caption d-none d-md-block">
												<div class="circle friend7">
													<h6 class="nickname">친구7</h6>
												</div>
												<div class="circle friend8">
													<h6 class="nickname">친구8</h6>
												</div>
												<div class="circle friend9">
													<h6 class="nickname">친구9</h6>
												</div>
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
								<div style="background-color:rgb(119, 109, 97);">
								<form class="d-flex" style="padding:5px" action="fres.do" method="post">
									<input type="hidden" value="searchid">
									<input class="form-control me-2" type="text" placeholder="친구 찾기" id="searchid" name="searchid">&nbsp; 
									<input class="btn btn-outline-dark" type="submit" id="searchbtn" name="searchbtn" value="Search">
								</form>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<jsp:include page="footer.jsp"></jsp:include>
	
	
</body>
</html>