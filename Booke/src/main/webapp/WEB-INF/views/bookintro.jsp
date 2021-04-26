<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookintro</title>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function detailPopup() {
		window.open("detailpopup.do", "test", "width=700, height=800, left=350, top=100")
	}
</script>
<style type="text/css">

body {
	background-color: #f5f5f5;
}

#mainnav {
	background-color: rgb(252, 252, 255) !important;
}

#mainhd {
	background-color: rgb(119, 109, 97) !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}

.col-lg-12 {
	flex: 0 0 68%;
	width: 100%;
}

.best_seller, .new_seller {
	height: 200px;
}

.total_category {
	width: 620px;
	background-color: rgb(119, 109, 97);
}

.detail_category {
	width: 620px;
	left: 0px;
	top: 30px;
	background-color: rgb(119, 109, 97);
	position: relative;
}

.login_menu {
	position: absolute;
	background-color: rgb(119, 109, 97);
	left: -35px;
	top: -42px;
}

.btn {
	margin: 10px 0px 10px 0px;
	left: 10px;
}

.btn-group, .btn-group-vertical {
	position: relative;
	display: inline-flex;
	vertical-align: middle;
	z-index: 0;
}

.btn:hover {
	color: white;
	font-weight: bold;
	background-color: rgb(181, 227, 216);
	border-color: rgb(181, 227, 216);
}

.btn-check:checked+.btn-outline-primary {
	color: black;
	background-color: rgb(181, 227, 216);
	border-color: rgb(181, 227, 216);
	border: 3px solid white;
	z-index: 1;
}

.btn-outline-primary {
	color: white;
	font-weight: bold;
	background-color: rgb(119, 109, 097);
	border-color: rgb(119, 109, 097);
}

.library_map {
	position: absolute;
	width: 400px;
	height: 225px;
	background-color: rgb(119, 109, 097);
	top: 616px;
	left: -35px;
}

.login_btn {
	border: 5px solid white;
	border-radius: 100%;
	width: 80px;
	height: 80px;
	margin: 24px;
	background-color: rgb(181, 227, 216);
}

.login_btn:hover, .login_mini_btn:hover {
	font-weight: bold;
}

.login_img {
	border: 5px solid white;
	border-radius: 100%;
	width: 130px;
	height: 130px;
	margin: 20px;
}

.login_name {
	width: 200px;
	height: 100px;
	position: relative;
	left: 180px;
	top: -170px;
}

.login_mini_btn {
	border: 5px solid white;
	border-radius: 100%;
	width: 50px;
	height: 50px;
	margin: 20px;
	background-color: rgb(181, 227, 216);
}

.login_nick, .read_book, .want_book {
	background-color: rgb(181, 227, 216);
	border: 5px solid white;
	height: 60px;
	text-align: center;
	vertical-align: middle;
	line-height: 50px;
}

.read_book {
	border: 5px solid white;
	width: 170px;
	height: 125px;
	margin: 20px;
	position: relative;
	top: -90px;
}

.want_book {
	border: 5px solid white;
	width: 170px;
	height: 125px;
	position: relative;
	top: -235px;
	margin: 0px 0px 0px 210px;
}

.attainment {
	border: 5px solid white;
	background-color: rgb(181, 227, 216);
	width: 360px;
	height: 155px;
	position: relative;
	top: -233px;
	margin: 20px;
}

.nickname {
	position: relative;
	top: 90px;
}

.book_intro {
	width: 620px;
	height: 1020px;
	position: relative;
	top: 40px;
	background-color: rgb(119, 109, 97);
}

.intro_1 {
	position: absolute;
	margin: 20px;
	width: 580px;
	height: 230px;
	background-color: rgb(181, 227, 216);
}

.intro_2 {
	position: absolute;
	margin: 20px;
	width: 580px;
	height: 230px;
	top: 250px;
	background-color: rgb(181, 227, 216);
}

.intro_3 {
	position: absolute;
	margin: 20px;
	width: 580px;
	height: 230px;
	background-color: rgb(181, 227, 216);
	top: 500px;
}

.intro_4 {
	position: absolute;
	margin: 20px;
	width: 580px;
	height: 230px;
	background-color: rgb(181, 227, 216);
	top: 750px;
}

.detail_intro1 {
	margin: 10px;
	position: absolute;
	width: 130px;
	height: 180px;
	background-color: rgb(252, 252, 255);
}

.detail_intro2 {
	margin: 10px;
	position: absolute;
	width: 130px;
	height: 180px;
	background-color: rgb(252, 252, 255);
	left: 143px;
}

.detail_intro3 {
	margin: 10px;
	position: absolute;
	width: 130px;
	height: 180px;
	left: 286px;
	background-color: rgb(252, 252, 255);
}

.detail_intro4 {
	margin: 10px;
	position: absolute;
	width: 130px;
	height: 180px;
	background-color: rgb(252, 252, 255);
	left: 430px;
}

.intro1_star, .intro2_star, .intro3_star, .intro4_star, .intro5_star {
	width: 130px;
	height: 25px;
	border: 1px solid black;
	top: 187px;
	position: absolute;
}

.map_btn{
	position: relative;
    width: 400px;
    height: 60px;
    right: 50px;
    top: 845px;
    border: 5px solid rgb(119, 109, 97);
    background-color: rgb(181, 227, 216);
}


</style>
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
						<div class="category">
							<div class="total_category">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="total_btnradio"
										id="btnradio1" autocomplete="off" checked> <label
										class="btn btn-outline-primary" for="btnradio1">전체 </label> <input
										type="radio" class="btn-check" name="total_btnradio"
										id="btnradio2" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio2">베스트셀러
									</label> <input type="radio" class="btn-check" name="total_btnradio"
										id="btnradio3" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio3">신간 </label>
								</div>
							</div>
						</div>
						<div class="col-sm-12 new_seller">
							<div class="detail_category">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio6" autocomplete="off" checked> <label
										class="btn btn-outline-primary" for="btnradio6">전체 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio7" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio7">문학 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio8" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio8">소설 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio9" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio9">만화책 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio10" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio10">교재 </label>
								</div>
							</div>
							<div class="book_intro">
								<div class="intro_1">
									<div class="detail_intro1">
										<img src="resources/images/bookimg1.jpg" onclick="detailPopup();">
										<div class="intro1_star"></div>
									</div>
									<div class="detail_intro2">
										<div class="intro2_star"></div>
									</div>
									<div class="detail_intro3">
										<div class="intro3_star"></div>
									</div>
									<div class="detail_intro4">
										<div class="intro4_star"></div>
									</div>
								</div>
								<div class="intro_2">
									<div class="detail_intro1">
										<div class="intro1_star"></div>
									</div>
									<div class="detail_intro2">
										<div class="intro2_star"></div>
									</div>
									<div class="detail_intro3">
										<div class="intro3_star"></div>
									</div>
									<div class="detail_intro4">
										<div class="intro4_star"></div>
									</div>
								</div>
								<div class="intro_3">
									<div class="detail_intro1">
										<div class="intro1_star"></div>
									</div>
									<div class="detail_intro2">
										<div class="intro2_star"></div>
									</div>
									<div class="detail_intro3">
										<div class="intro3_star"></div>
									</div>
									<div class="detail_intro4">
										<div class="intro4_star"></div>
									</div>
								</div>
								<div class="intro_4">
									<div class="detail_intro1">
										<div class="intro1_star"></div>
									</div>
									<div class="detail_intro2">
										<div class="intro2_star"></div>
									</div>
									<div class="detail_intro3">
										<div class="intro3_star"></div>
									</div>
									<div class="detail_intro4">
										<div class="intro4_star"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="col-sm-4">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="login_menu">
								<!-- 서재 / 커뮤니티 / 내 서재 버튼 div -->
								<input type="button" class="login_btn" value="서재" onclick="location.href='map.do'">
								<input type="button" class="login_btn" value="커뮤니티" onclick="">
								<input type="button" class="login_btn" value="책 소개" onclick="">
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
							<div class="library_map">
								<div id="map" style="width:400px;height:225px;"></div>
								<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ec334948643a95282b6e3466aaebc54"></script>
								<script type="text/javascript">
								var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
								var options = { //지도를 생성할 때 필요한 기본 옵션
									center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
									level: 3 //지도의 레벨(확대, 축소 정도)
								};

								var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
								</script>
							</div>
							<input class="map_btn" type="button" value="도서관 & 서점 찾기" onclick="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer style="position: relative; top: 1000px;">
	<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>