<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailpopup</title>
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<style type="text/css">
body {
	background-color: rgb(181, 227, 216);
}

.detail {
	border: 5px solid rgb(119, 109, 97);
    height: 911px;
    background-color: rgb(181, 227, 216);
    position: relative;
}

.comment {
	border: 5px solid rgb(119, 109, 97);
    height: 350px;
    position: relative;
    top: 27px;
}

.cover {
    width: 483px;
    height: 806px;
    position: absolute;
    margin: 50px;
}

.row > .detail {
    flex-shrink: 0;
    width: 1500px;
    max-width: 100%;
    padding-right: calc(var(--bs-gutter-x)/ 2);
    padding-left: calc(var(--bs-gutter-x)/ 2);
    margin-top: var(--bs-gutter-y);
}
.intro1 {
	border: 5px solid rgb(119, 109, 97);
    width: 460px;
    height: 621px;
    position: absolute;
    left: 542px;
    top: 50px;
    background: white;
}

.content {
	border: 5px solid rgb(119, 109, 97);
    width: 939px;
    height: 200px;
    position: absolute;
    top: 680px;
    left: 62px;
    background: white;
}

.date {
	border: 5px solid rgb(119, 109, 97);
    width: 385px;
    height: 40px;
    position: absolute;
    left: 30px;
    top: 530px;
}
.readbook{
	background: rgb(119, 109, 97);
    width: 385px;
    height: 80px;
    left: 30px;
    top: 330px;
    position: absolute;
    
}
.wantbook{
	background: rgb(119, 109, 97);
    width: 385px;
    height: 80px;
    left: 577px;
    top: 475px;
    position: absolute;
    
}
.title{
	border: 5px solid rgb(119, 109, 97);
    width: 385px;
    height: 70px;
    position: relative;
    left: 30px;
    top: 30px;
    text-align: center;
    display: table-cell;
    vertical-align: middle;
}
.author{
	border: 5px solid rgb(119, 109, 97);
    width: 385px;
    height: 60px;
    position: relative;
    left: 30px;
    top: 70px;
    text-align: center;
    vertical-align: middle;
}
.publisher{
	border: 5px solid rgb(119, 109, 97);
    width: 385px;
    position: relative;
    left: 30px;
    top: 120px;
    text-align: center;
    vertical-align: middle;
}
.book0{
	border: 5px solid rgb(119, 109, 97);
    position: absolute;
    width: 200px;
    height: 300px;
    margin: 20px;
}
.book1{
	border: 5px solid rgb(119, 109, 97);
    position: absolute;
    width: 200px;
    height: 300px;
    margin: 20px;
    left: 270px;
}
.book2{
	border: 5px solid rgb(119, 109, 97);
    position: absolute;
    width: 200px;
    height: 300px;
    margin: 20px;
    left: 530px;
}
.book3{
	border: 5px solid rgb(119, 109, 97);
    position: absolute;
    width: 200px;
    height: 300px;
    margin: 20px;
    left: 800px;
}
.name{
	border: 5px solid rgb(119, 109, 97);
    height: 70px;
    top: 15px;
    position: relative;
    text-align: center;
    vertical-align: middle;
    font-size: 30px;
}
</style>
<script
    src="https://code.jquery.com/jquery-3.6.0.js"
    integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"></script>
<script type="text/javascript">
	function check(){
		var check = confirm("읽은 책에 등록하시겠습니까?");
		
		var submitfalse = function(){if(check == false){return false;}};
		
		if(check == true && $("#date").val() != null){
			alert("등록을 완료했습니다.");
		}else if(check == true && $("#date").val() == null){
			alert("날짜를 입력하세요");
			return false
		}else{
			alert("등록을 취소했습니다.");
			$("form").bind("submit", submitfalse);
		}
		
	}
</script>
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
						<div class="detail">
							<div class="cover">
								<img style="width: 90%; border: 5px solid rgb(119, 109, 97);" src=<%=request.getParameter("cover")%>>
							</div>
							<form action="rsavedb.do" method="GET">
							<input type="hidden" name="title" value="<%=request.getParameter("title")%>">
							<input type="hidden" name="author" value="<%=request.getParameter("author")%>">
							<input type="hidden" name="cover" value="<%=request.getParameter("cover")%>">
							<div class="intro1">
								<div class="title">
									<h3><%=request.getParameter("title")%></h3>
								</div>
								<div class="author">
									작가<br><%=request.getParameter("author")%><br>
								</div>
								<div class="publisher">
									출판사 : <%=request.getParameter("publisher")%>
								</div>
								<input class="readbook" type="submit" value="읽은 책 담기" onclick="check();">
								
								<div class="date">
								<input type="date" id="date" name="date">
								</div>
									
							</div>
							<div class="content">
								<%=request.getParameter("description")%>
							</div>
							</form>
							<form action="wsavedb.do" method="GET">
							<input type="hidden" name="title" value="<%=request.getParameter("title")%>">
							<input type="hidden" name="author" value="<%=request.getParameter("author")%>">
							<input type="hidden" name="cover" value="<%=request.getParameter("cover")%>">
							<input class="wantbook" type="submit" value="읽고싶은 책 담기" onclick="check();">
							</form>
						</div>
						<div class="name">이 작가의 다른 도서 보기</div>
						<div class="comment">
							<div class="book0"></div>
							<div class="book1"></div>
							<div class="book2"></div>
							<div class="book3"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<div class="login_menu">
								<!-- 서재 / 커뮤니티 / 내 서재 버튼 div -->
								<div class="login_img">
									<img src="resources/images/kjh.png"
										style="border-radius: 100%;">
								</div>
								<div class="login_name">
									<!-- 설정 / 쪽지 버튼, 닉네임 -->
									<a href="setting.do"><i class="bi bi-gear-fill"
										style="font-size: 2.5rem; color: white; position: absolute; left: 160px;"></i></a>
									<a href="msg.do"><i class="bi bi-chat-text-fill"
										style="font-size: 2.5rem; color: white; position: relative; left: 110px;"></i></a>
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
	<footer style="position: relative; top: 1000px;">
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>