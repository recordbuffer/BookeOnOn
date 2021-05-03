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

<link rel="stylesheet" href="resources/css/searchpage.css" type="text/css">

<link rel="stylesheet" href="resources/css/footer.css">
<style type="text/css">
#mainnav {
	background-color: #b5e3d8 !important;
}

#mainhd {
	background-color: #fff !important;
}

#mainbody {
	background-color: #fff !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}

#hddiv1 {
	background-color: rgb(119, 109, 97) !important;
	padding: 0.5rem;
}
</style>
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	
	<!-- Header -->
	<header class="bg-primary py-2 mb-5" id="mainhd">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12" id="hddiv">
					<h1 class="display-4 text-white mt-1 mb-1">
						<button type="button" class="btn btn-dark" >작가</button>
						<button type="button" class="btn btn-dark" >도서명</button>
						<form class="d-flex" action="">
							<input class="form-control me-2" type="text" placeholder="Search"
								aria-label="Search">&nbsp; <input
								class="btn btn-outline-dark" type="submit" value="Search">
						</form>
					</h1>
				</div>
			</div>
		</div>
	</header>
	
	<!-- Page Content -->

	<main class="bg-primary py-2 mb-5" id="mainbody">
		<div class="container">
			<div class="row">
				<div class="col-lg-3"><img src="resources/images/bookimg1.png"></div>
				<div class="col-lg-7"><br>
					"BTS 북클럽에 여러분을 초대합니다!“ - 빌보드 싱글차트와 앨범차트
					동시 1위 - 누구도 꿈꾸지 못했던 이상을 현실로 이루어낸 전 세계 대중문화의 표준, BTS를 만든 7개 키워드,
					37권의 책 대한민국 나이로 오십을 넘긴 작가이자 연구원이며 동시에 BTS의 팬인 아미. 어느 일요일, 딸의 공부방에서
					흘러나온 BTS의 노래를 듣고 ‘참! 멋지다’라 생각했고 이후 스마트폰 플레이리스트에 BTS 노래만 담고 다녔다. 방탄을
					방탄하며 시중에 나와 있는 BTS 관련 책들을 모조리 섭렵하던 중 그들의 지금을 있게 한 책들은 무엇일까에 궁금증을 갖기
					시작했다. 2019년 참석한 ‘BTS 인사이트 포럼’에서 BTS 신드롬을 문학, 미술, 인문학, 경제 등 다양한 영역에서
					분석하는 모습을 보고 스스로 이 현상을 파악해야겠다고 생각하기에 이른다.
				</div>
				<div class="col-lg-2">
					<br>
					<p><button type="button" class="btn btn-danger btn-block">읽고 싶어요</button></p>
					<br>
					<p><button type="button" class="btn btn-danger btn-block">읽었어요</button></p>
				</div>
				<br>
				
				<div class="col-lg-3"><img src="resources/images/bookimg2.png"></div>
				<div class="col-lg-7"><br>
					진짜 어른이 되기 위한 역설! 우리 모두의 어린 시절에서 건져 올린,
					반짝반짝 빛나는 태도들 “라파엘로처럼 그리는 데는 4년이 걸렸지만, 어린아이처럼 그리는 데는 평생이 걸렸다.” - 파블로
					피카소-
				</div>
				<div class="col-lg-2">
					<br>
					<p><button type="button" class="btn btn-danger btn-block">읽고 싶어요</button></p>
					<br>
					<p><button type="button" class="btn btn-danger btn-block">읽었어요</button></p>
				</div>
				<br>
				<div class="col-lg-3"><img src="resources/images/bookimg3.png"></div>
				<div class="col-lg-7"><br>
					“말과 글에는 나름의 온도가 있다” 말과 글에는 나름의 온도가 있다.
					따뜻함과 차가움의 정도가 저마다 다르다. 적당히 온기 있는 언어는 슬픔을 감싸 안아준다. 세상살이에 지칠 때 어떤 이는
					친구와 이야기를 주고받으며 고민을 털어내고, 어떤 이는 책을 읽으며 작가가 건네는 문장에서 위안을 얻는다. 그렇다면 이
					책을 집어 든 우리의 언어 온도는 몇 도쯤 될까? 무심결에 내뱉은 말 한마디 때문에 소중한 사람이 곁을 떠났다면 '말
					온도'가 너무 뜨거웠던 게 아닐까. 한두 줄 문장 때문에 누군가 마음의 문을 닫았다면 '글 온도'가 너무 차갑기
					때문인지도 모를 노릇이다. 어쩌면.
				</div>
				<div class="col-lg-2">
					<br>
					<p><button type="button" class="btn btn-danger btn-block">읽고 싶어요</button></p>
					<br>
					<p><button type="button" class="btn btn-danger btn-block">읽었어요</button></p>
				</div>
				<br>
			</div>
		</div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>