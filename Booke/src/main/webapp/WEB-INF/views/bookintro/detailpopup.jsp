<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    padding: 30px;
}

.date {
	border: 5px solid rgb(119, 109, 97);
    width: 385px;
    height: 40px;
    position: absolute;
    left: 30px;
    top: 440px;
}
.readbook{
	background: rgb(119, 109, 97);
    width: 385px;
    height: 80px;
    left: 30px;
    top: 489px;
    position: absolute;
    
}
.wantbook{
	background: rgb(119, 109, 97);
    width: 385px;
    height: 80px;
    left: 577px;
    top: 385px;
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
    top: 98px;
    text-align: center;
    vertical-align: middle;
}
.price{
	border: 5px solid rgb(119, 109, 97);
    width: 385px;
    position: relative;
    left: 30px;
    top: 125px;
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
		var date = $("#date").val();
		
		console.log(date);
		
		var submitfalse = function(){if(check == false){return false;}};
		
		if(check == true){
			if(date == ""){
				alert("날짜를 입력하세요");
				return false;
				$("form").bind("submit", submitfalse);
			}else{
			alert("등록을 완료했습니다.");				
			}
		}else if(check == false){
			alert("등록을 취소했습니다.");
			$("form").bind("submit", submitfalse);
		}
		
	}
	
	function wantcheck(){
		var check = confirm("읽은 책에 등록하시겠습니까?");
		
		console.log(date);
		
		var submitfalse = function(){if(check == false){return false;}};
		
		if(check == true){
			alert("등록을 완료했습니다.");					
		}else if(check == false){
			alert("등록을 취소했습니다.");
			$("form").bind("submit", submitfalse);
		}	
	}
	
	function detailmap() {
        window.open("detailmap.do", "test",
                "width=1000, height=420, left=350, top=200");
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
							<input type="hidden" name="publisher" value="<%=request.getParameter("publisher")%>">
							<input type="hidden" name="price" value="<%=request.getParameter("price")%>">
							<input type="hidden" name="description" value="<%=request.getParameter("description")%>">
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
								<div class="price">
									가격 : <%=request.getParameter("price")%>원
								</div>
								<input class="readbook" type="submit" value="읽은 책 담기" onclick="check();">
								
								<div class="date">
								<input type="date" id="date" name="date" style="width:100%;">
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
							<input class="wantbook" type="submit" value="읽고싶은 책 담기" onclick="wantcheck();">
							</form>
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
	<footer style="position: relative; top: 200px;">
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>