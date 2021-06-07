<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.mvc.book.controller.BookController"%>
<%@page import="com.mvc.book.model.dto.BookInfodto"%>
<%@page import="java.util.List"%>

<%
	String query = request.getParameter("query");
String sort = "accuracy";

String temp = request.getParameter("sort"); // accuracy or recency
if (temp != null) {
	sort = temp;
}

BookController control = new BookController();

List<BookInfodto> books;
try {
	books = control.getBookList(query, sort);
} catch (Exception e) {
	books = new ArrayList<BookInfodto>();
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booksearchpage</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" href="resources/css/searchpage.css"
	type="text/css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="./css/Bookserchcardview.css" />


<style type="text/css">
#mainnav {
	background-color: #b5e3d8 !important;
}

#mainhd {
	background-color: #f5f5f5 !important;
}

#mainbody {
	background-color: #f5f5f5 !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}

p>button {
	background-color: rgb(181, 227, 216) !important;
}

#bookimg {
	width: 500px;
	height: 500px;
	object-fit: contain;
}

#new {
	position: relative;
	left: -10px;
}

#newtext {
	overflow: auto;
	border: 1px solid rgb(181, 227, 216);
	height: 250px;
	width: 300px;
}

#best {
	position: relative;
	left: 330px;
}

#edit {
	position: relative;
	left: 170px;
}

#besttext {
	overflow: auto;
	border: 1px solid rgb(181, 227, 216);
	height: 250px;
	width: 300px;
}

#imgsize1 {
	position: relative;
	width: 300px;
	height: 300px;
}
</style>
</head>

<body style="background-color: #f5f5f5;">

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>



	<!-- Header -->
	<header class="bg-primary py-2 mb-5" id="mainhd">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12" id="hddiv">
					<h1 class="display-4 text-white mt-1 mb-1">
						<button type="button" class="btn btn-dark">북이온앤온 검색하기</button>
						<form class="d-flex" action="bres.do">
							<input class="form-control me-2 test1" type="text" name="query"
								placeholder="Search" <%if (query != null) {%>
								value="<%=query%>" <%}%> aria-label="Search">&nbsp; <input
								class="btn btn-outline-dark test" type="submit" value="Search">
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
				<!-- <div class="col-lg-6"><img id="bookimg" src="resources/images/bookimg2.png"><p><button type="button" class="btn btn-block" onclick="">이달의 베스트 셀러</button></p></div> -->
				<div class="col-lg-3" id="new">
					<img src="resources/images/bookimg1.png" id="imgsize1">
					<div id="newtext">"BTS 북클럽에 여러분을 초대합니다!“ - 빌보드 싱글차트와 앨범차트 동시
						1위 - 누구도 꿈꾸지 못했던 이상을 현실로 이루어낸 전 세계 대중문화의 표준, BTS를 만든 7개 키워드, 37권의
						책 대한민국 나이로 오십을 넘긴 작가이자 연구원이며 동시에 BTS의 팬인 아미. 어느 일요일, 딸의 공부방에서 흘러나온
						BTS의 노래를 듣고 ‘참! 멋지다’라 생각했고 이후 스마트폰 플레이리스트에 BTS 노래만 담고 다녔다. 방탄을
						방탄하며 시중에 나와 있는 BTS 관련 책들을 모조리 섭렵하던 중 그들의 지금을 있게 한 책들은 무엇일까에 궁금증을
						갖기 시작했다. 2019년 참석한 ‘BTS 인사이트 포럼’에서 BTS 신드롬을 문학, 미술, 인문학, 경제 등 다양한
						영역에서 분석하는 모습을 보고 스스로 이 현상을 파악해야겠다고 생각하기에 이른다.</div>
					<br>
					<p>
						<button type="button" class="btn btn-block">이달의 신간</button>
					</p>
				</div>
				<div class="col-lg-3" id="edit">
					<img src="resources/images/bookimg4.png" id="imgsize1">
					<div id="newtext">의사들이 환자들과 경험하는 특별한 이야기 의사들의 마음속에는 결코 작지 않은
						공간이 있다. 환자와의 시간이 고스란히 기억된 공간이다. 그 기억을 잊지 않기 위해, 그래서 다음 환자에게 더 나은
						의료를 제공하기 위해 의사들은 펜을 든다. 《아픔은 당신 탓이 아닙니다》에는 환자와의 시간을 통해 경험했던 특별한
						이야기, 환자와 주고받았던 가슴 울리는 대화들, 그리고 그들에게 차마 못다 한 속마음이 솔직하게 적힌 42편의 이야기가
						실렸다. 기록하고 기억하면서 의사도 한 명의 환자일 수 있음을, 의사를 의사답게 만드는 이는 다름 아닌 환자임을,
						의사는 환자에게 가 닿기 위해 끊임없이 노력해야 하는 존재임을 잊지 않은 채, 오늘도 다음 환자의 이름을 부를 것이다.
					</div>
					<br>
					<p>
						<button type="button" class="btn btn-block">book e on & on 추천</button>
					</p>
				</div>
				<!-- <div class="col-lg-6"><img id="bookimg" src="resources/images/bookimg3.png"><p><button type="button" class="btn btn-block">이달의 신간 리스트</button></p></div> -->
				<div class="col-lg-3" id="best">
					<img src="resources/images/bookimg3.png" id="imgsize1">
					<div id="besttext">“말과 글에는 나름의 온도가 있다” 말과 글에는 나름의 온도가 있다.
						따뜻함과 차가움의 정도가 저마다 다르다. 적당히 온기 있는 언어는 슬픔을 감싸 안아준다. 세상살이에 지칠 때 어떤 이는
						친구와 이야기를 주고받으며 고민을 털어내고, 어떤 이는 책을 읽으며 작가가 건네는 문장에서 위안을 얻는다. 그렇다면 이
						책을 집어 든 우리의 언어 온도는 몇 도쯤 될까? 무심결에 내뱉은 말 한마디 때문에 소중한 사람이 곁을 떠났다면 '말
						온도'가 너무 뜨거웠던 게 아닐까. 한두 줄 문장 때문에 누군가 마음의 문을 닫았다면 '글 온도'가 너무 차갑기
						때문인지도 모를 노릇이다.</div>
					<br>
					<p>
						<button type="button" class="btn btn-block">이달의 추천</button>
					</p>
				</div>
			</div>
		</div>

	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>