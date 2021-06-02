<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

<link rel="stylesheet" href="resources/css/footer.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="resources/css/bookintro.css">
<style type="text/css">
ul{
	position: relative;
    top: 950px;
    right: 155px;
}
.cover{
	width: 100%;
}
</style>
</head>

<body>

<script
    src="https://code.jquery.com/jquery-3.6.0.js"
    integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"></script>
    
    <script type="text/javascript" src="js/bookintro.js"></script>
	

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
						<div class="category">
							<div class="total_category">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="total_btnradio"
										id="btnradio1" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio1" onclick="listAll();">전체 </label> <input
										type="radio" class="btn-check" name="total_btnradio"
										id="btnradio2" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio2" onclick="best();">베스트셀러
									</label> <input type="radio" class="btn-check" name="total_btnradio"
										id="btnradio3" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio3" onclick="newbook();">신간 </label>
								</div>
							</div>
						</div>
						<div class="col-sm-12 new_seller">
							<div class="detail_category">
								<div class="btn-group" role="group"
									aria-label="Basic radio toggle button group">
									<input type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio4" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio4">전체 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio5" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio5" onclick="check1();">건강/취미 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio6" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio6" onclick="check2();">고전 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio7" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio7" onclick="check3();">과학 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio8" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio8" onclick="check4();">만화 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio9" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio9" onclick="check5();">사회과학 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio10" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio10" onclick="check6();">소설/시 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio11" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio11" onclick="check7();">에세이 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio12" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio12" onclick="check8();">역사 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio13" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio13" onclick="check9();">인문학 </label> <input
										type="radio" class="btn-check" name="detail_btnradio"
										id="btnradio14" autocomplete="off"> <label
										class="btn btn-outline-primary" for="btnradio14" onclick="check10();">자기계발 </label>
								</div>
							</div>
							<div class="book_intro">
								<div class="intro_1 formtest">
									<div class="detail_intro1 index0">
										<div class="intro1_star star0"></div>
									</div>
									<div class="detail_intro2 index1">
										<div class="intro2_star star1"></div>
									</div>
									<div class="detail_intro3 index2">
										<div class="intro3_star star2"></div>
									</div>
									<div class="detail_intro4 index3">
										<div class="intro4_star star3"></div>
									</div>
									<div class="detail_intro5 index4">
										<div class="intro5_star star4"></div>
									</div>
								</div>
								<div class="intro_2">
									<div class="detail_intro1 index5">
										<div class="intro1_star star5"></div>
									</div>
									<div class="detail_intro2 index6">
										<div class="intro2_star star6"></div>
									</div>
									<div class="detail_intro3 index7">
										<div class="intro3_star star7"></div>
									</div>
									<div class="detail_intro4 index8">
										<div class="intro4_star star8"></div>
									</div>
									<div class="detail_intro5 index9">
										<div class="intro5_star star9"></div>
									</div>
								</div>
								<div class="intro_3">
									<div class="detail_intro1 index10">
										<div class="intro1_star star10"></div>
									</div>
									<div class="detail_intro2 index11">
										<div class="intro2_star star11"></div>
									</div>
									<div class="detail_intro3 index12">
										<div class="intro3_star star12"></div>
									</div>
									<div class="detail_intro4 index13">
										<div class="intro4_star star13"></div>
									</div>
									<div class="detail_intro5 index14">
										<div class="intro5_star star14"></div>
									</div>
								</div>
								<div class="intro_4">
									<div class="detail_intro1 index15">
										<div class="intro1_star star15"></div>
									</div>
									<div class="detail_intro2 index16">
										<div class="intro2_star star16"></div>
									</div>
									<div class="detail_intro3 index17">
										<div class="intro3_star star17"></div>
									</div>
									<div class="detail_intro4 index18">
										<div class="intro4_star star18"></div>
									</div>
									<div class="detail_intro5 index19">
										<div class="intro5_star star19"></div>
									</div>
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
							<div class="library_map">
								<div id="map" style="width: 400px; height: 225px;"></div>
								<script type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ec334948643a95282b6e3466aaebc54"></script>
								<script type="text/javascript">
									var container = document
											.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
									var options = { //지도를 생성할 때 필요한 기본 옵션
										center : new kakao.maps.LatLng(
												33.450701, 126.570667), //지도의 중심좌표.
										level : 3
									//지도의 레벨(확대, 축소 정도)
									};
									var map = new kakao.maps.Map(container,
											options); //지도 생성 및 객체 리턴
								</script>
							</div>
							<input class="map_btn" type="button" value="도서관 & 서점 찾기"
								onclick="detailmap();">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
			<nav aria-label="Page navigation example">
				<ul class="pagination">
					<li class="page-item pre" style=""><a class="page-link" onclick="pre();">◀</a></li>
					<li class="page-item before"><a class="page-link page1" href="#">1</a></li>
					<li class="page-item before"><a class="page-link page2" href="#">2</a></li>
					<li class="page-item before"><a class="page-link page3" href="#">3</a></li>
					<li class="page-item before"><a class="page-link page4" href="#">4</a></li>
					<li class="page-item before"><a class="page-link page5" href="#">5</a></li>
					<li class="page-item before"><a class="page-link page6" href="#">6</a></li>
					<li class="page-item before"><a class="page-link page7" href="#">7</a></li>
					<li class="page-item before"><a class="page-link page8" href="#">8</a></li>
					<li class="page-item before"><a class="page-link page9" href="#">9</a></li>
					<li class="page-item before"><a class="page-link page10" href="#">10</a></li>
					<li class="page-item after"><a class="page-link page11" href="#">11</a></li>
					<li class="page-item after"><a class="page-link page12" href="#">12</a></li>
					<li class="page-item after"><a class="page-link page13" href="#">13</a></li>
					<li class="page-item after"><a class="page-link page14" href="#">14</a></li>
					<li class="page-item after"><a class="page-link page15" href="#">15</a></li>
					<li class="page-item after"><a class="page-link page16" href="#">16</a></li>
					<li class="page-item after"><a class="page-link page17" href="#">17</a></li>
					<li class="page-item after"><a class="page-link page18" href="#">18</a></li>
					<li class="page-item after"><a class="page-link page19" href="#">19</a></li>
					<li class="page-item after"><a class="page-link page20" href="#">20</a></li>
					<li class="page-item"><a class="page-link next" onclick="next();">▶</a></li>
				</ul>
			</nav>
	<footer style="position: relative; top: 1000px;">
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>