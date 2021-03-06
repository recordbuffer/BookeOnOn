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
<script type="text/javascript">
    function aa() {
        alert("로그아웃 하셨습니다.");
    }
</script>
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
	<script
    src="https://code.jquery.com/jquery-3.6.0.js"
    integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
    crossorigin="anonymous"></script>
    <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
    <script type="text/javascript">
    		$.getJSON("json/newspecial.json", function(data){
    			console.log(data);
    			$("#best1").append("<img src = '" + data.item[0].cover + "'/>");
    			$("#best2").append("<img src = '" + data.item[1].cover + "'/>");
    			$("#best3").append("<img src = '" + data.item[2].cover + "'/>");
    			$("#best4").append("<img src = '" + data.item[3].cover + "'/>");
    			$("#best5").append("<img src = '" + data.item[4].cover + "'/>");
    			$(".bb_1_star").append("<img src = 'resources/images/rating" + data.item[0].customerReviewRank + ".jpg'/>");
    			$(".bb_2_star").append("<img src = 'resources/images/rating" + data.item[1].customerReviewRank + ".jpg'/>");
    			$(".bb_3_star").append("<img src = 'resources/images/rating" + data.item[2].customerReviewRank + ".jpg'/>");
    			$(".bb_4_star").append("<img src = 'resources/images/rating" + data.item[3].customerReviewRank + ".jpg'/>");
    			$(".bb_5_star").append("<img src = 'resources/images/rating" + data.item[4].customerReviewRank + ".jpg'/>");
    		});
    		$.getJSON("json/editorchoice.json", function(data){
    			$("#new1").append("<img src = '" + data.item[0].cover + "'/>");
    			$("#new2").append("<img src = '" + data.item[1].cover + "'/>");
    			$("#new3").append("<img src = '" + data.item[2].cover + "'/>");
    			$("#new4").append("<img src = '" + data.item[3].cover + "'/>");
    			$("#new5").append("<img src = '" + data.item[4].cover + "'/>");
    			$(".nb_1_star").append("<img src = 'resources/images/rating" + data.item[0].customerReviewRank + ".jpg'/>");
    			$(".nb_2_star").append("<img src = 'resources/images/rating" + data.item[1].customerReviewRank + ".jpg'/>");
    			$(".nb_3_star").append("<img src = 'resources/images/rating" + data.item[2].customerReviewRank + ".jpg'/>");
    			$(".nb_4_star").append("<img src = 'resources/images/rating" + data.item[3].customerReviewRank + ".jpg'/>");
    			$(".nb_5_star").append("<img src = 'resources/images/rating" + data.item[4].customerReviewRank + ".jpg'/>");
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
							<div class="text-left" style="position: absolute; font-size: 30px; margin: 8px;">주목할 만한 신간 리스트</div>
							</div>
							<div class="best_book bb_1 text-center" id="best1">
								<div class="bb_1_star text-center"></div>
							</div>
							<div class="best_book bb_2 text-center"  id="best2">
								<div class="bb_2_star text-center"></div>
							</div>
							<div class="best_book bb_3 text-center"  id="best3">
								<div class="bb_3_star text-center"></div>
							</div>
							<div class="best_book bb_4 text-center"  id="best4">
								<div class="bb_4_star text-center"></div>
							</div>
							<div class="best_book bb_5 text-center"  id="best5">
								<div class="bb_5_star text-center"></div>
							</div>
						</div>
						<div class="col-sm-12 new_seller">
							<div class="new_category text-right">
							<div class="text-left" style="position: absolute; font-size: 30px; margin: 8px;">에디터 추천 리스트</div>
							</div>
							<div class="new_book nb_1 text-center"  id="new1">
								<div class="nb_1_star text-center"></div>
							</div>
							<div class="new_book nb_2 text-center" id="new2">
								<div class="nb_2_star text-center"></div>
							</div>
							<div class="new_book nb_3 text-center" id="new3">
								<div class="nb_3_star text-center"></div>
							</div>
							<div class="new_book nb_4 text-center" id="new4">
								<div class="nb_4_star text-center"></div>
							</div>
							<div class="new_book nb_5 text-center" id="new5">
								<div class="nb_5_star text-center"></div>
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
					</div>
				<br><br><br><br>
				

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
                                    <img src="resources/images/L4.png" style="border-radius: 100%; height: 100px; transform: translate(10px, 10px);"></div>
                                </c:when>
                                <c:when test="${user.be_role == 'L3' }">
                                    <div class="login_img">
                                    <img src="resources/images/L3.png" style="transform: translate(10px, 10px); border-radius: 100%; height: 100px;"></div>
                                </c:when>
                                <c:when test="${user.be_role == 'L2' }">
                                    <div class="login_img">
                                    <img src="resources/images/L2.png" style="border-radius: 100%; height: 100px; transform: translate(10px, 10px);"></div>
                                </c:when>
                                <c:otherwise>
                                    <div class="login_img">
                                    <img src="resources/images/L1.png" style="border-radius: 100%; height: 100px; transform: translate(10px, 10px);"></div>
                                </c:otherwise>
                                </c:choose>
								<div class="login_name">
									<!-- 설정 / 쪽지 버튼, 닉네임 -->
									<a href="setting.do"><i class="bi bi-gear-fill" style="font-size: 2.2rem; color: white; position: absolute; left: 160px; transform: translate(5px, 10px);"></i></a>
									<div style="transform: translate(-10px, 58px);">
										<p style="font-size: 15pt;">@ ${user.be_id }</p>
										<p style="font-size: 25pt;">${user.be_nn }<span style="font-size: 19pt;">님</span></p>
										<input type="button" class="btn btn-outline-dark" value="LOGOUT" style="transform: translate(130px, -58px);" onclick="location.href='logout.do'; aa();">
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
									<div style="font-size:20pt;"><span>${r_book }</span><span style="font-size: 19pt;"> 권</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>${w_book } 권</span></div>
									<div style="transform: translate(3px,7px);"><span>읽은 책</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span>읽고 싶은 책</span></div>
								</div>
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
								<div style="background-color:rgb(119, 109, 97); top: 30px; position: relative;">
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