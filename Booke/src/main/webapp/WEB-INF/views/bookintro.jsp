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
		window.open("detailpopup.do", "test", "width=700, height=800, left=350, top=100");
	}
	function detailmap() {
		window.open("detailmap.do", "test", "width=1000, height=600, left=350, top=200");
	}
</script>
<link rel="stylesheet" href="resources/css/bookintro.css">
<link rel="stylesheet" href="resources/css/footer.css">
<style type="text/css">
.like{
	display: none;
}

.check{
	position: absolute;
    left: 95px;
    top: 5px;
	}

input[id="chk1"] + label {
	display: inline-block;
	width: 30px;
	height: 30px;
	background: url("resources/images/default.png") 0 0 no-repeat;
	vertical-align: middle;
}

input[id="chk1"]:checked + .check {
	display: inline-block;
	width: 30px;
	height: 30px;
	background: url("resources/images/like.png") 0 0 no-repeat;
	vertical-align: middle;
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
										<input type="checkbox" id="chk1" class="like"><label for="chk1" class="check"></label>
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
							<input class="map_btn" type="button" value="도서관 & 서점 찾기" onclick="detailmap();">
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