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
						<button type="button" class="btn btn-dark">??????????????? ????????????</button>
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
				<!-- <div class="col-lg-6"><img id="bookimg" src="resources/images/bookimg2.png"><p><button type="button" class="btn btn-block" onclick="">????????? ????????? ??????</button></p></div> -->
				<div class="col-lg-3" id="new">
					<img src="resources/images/bookimg1.png" id="imgsize1">
					<div id="newtext">"BTS ???????????? ???????????? ???????????????!??? - ????????? ??????????????? ???????????? ??????
						1??? - ????????? ????????? ????????? ????????? ????????? ???????????? ??? ?????? ??????????????? ??????, BTS??? ?????? 7??? ?????????, 37??????
						??? ???????????? ????????? ????????? ?????? ???????????? ??????????????? ????????? BTS??? ?????? ??????. ?????? ?????????, ?????? ??????????????? ????????????
						BTS??? ????????? ?????? ??????! ??????????????? ???????????? ?????? ???????????? ????????????????????? BTS ????????? ?????? ?????????. ?????????
						???????????? ????????? ?????? ?????? BTS ?????? ????????? ????????? ???????????? ??? ????????? ????????? ?????? ??? ????????? ??????????????? ????????????
						?????? ????????????. 2019??? ????????? ???BTS ???????????? ??????????????? BTS ???????????? ??????, ??????, ?????????, ?????? ??? ?????????
						???????????? ???????????? ????????? ?????? ????????? ??? ????????? ????????????????????? ??????????????? ?????????.</div>
					<br>
					<p>
						<button type="button" class="btn btn-block">????????? ??????</button>
					</p>
				</div>
				<div class="col-lg-3" id="edit">
					<img src="resources/images/bookimg4.png" id="imgsize1">
					<div id="newtext">???????????? ???????????? ???????????? ????????? ????????? ???????????? ??????????????? ?????? ?????? ??????
						????????? ??????. ???????????? ????????? ???????????? ????????? ????????????. ??? ????????? ?????? ?????? ??????, ????????? ?????? ???????????? ??? ??????
						????????? ???????????? ?????? ???????????? ?????? ??????. ???????????? ?????? ?????? ????????????????????? ???????????? ????????? ?????? ???????????? ?????????
						?????????, ????????? ??????????????? ?????? ????????? ?????????, ????????? ???????????? ?????? ?????? ??? ???????????? ???????????? ?????? 42?????? ????????????
						?????????. ???????????? ??????????????? ????????? ??? ?????? ????????? ??? ?????????, ????????? ???????????? ????????? ?????? ?????? ?????? ????????????,
						????????? ???????????? ??? ?????? ?????? ???????????? ???????????? ?????? ???????????? ?????? ?????? ???, ????????? ?????? ????????? ????????? ?????? ?????????.
					</div>
					<br>
					<p>
						<button type="button" class="btn btn-block">book e on & on ??????</button>
					</p>
				</div>
				<!-- <div class="col-lg-6"><img id="bookimg" src="resources/images/bookimg3.png"><p><button type="button" class="btn btn-block">????????? ?????? ?????????</button></p></div> -->
				<div class="col-lg-3" id="best">
					<img src="resources/images/bookimg3.png" id="imgsize1">
					<div id="besttext">????????? ????????? ????????? ????????? ????????? ?????? ????????? ????????? ????????? ??????.
						???????????? ???????????? ????????? ????????? ?????????. ????????? ?????? ?????? ????????? ????????? ?????? ????????????. ??????????????? ?????? ??? ?????? ??????
						????????? ???????????? ??????????????? ????????? ????????????, ?????? ?????? ?????? ????????? ????????? ????????? ???????????? ????????? ?????????. ???????????? ???
						?????? ?????? ??? ????????? ?????? ????????? ??? ?????? ??????? ???????????? ????????? ??? ????????? ????????? ????????? ????????? ?????? ???????????? '???
						??????'??? ?????? ???????????? ??? ?????????. ?????? ??? ?????? ????????? ????????? ????????? ?????? ???????????? '??? ??????'??? ?????? ?????????
						??????????????? ?????? ????????????.</div>
					<br>
					<p>
						<button type="button" class="btn btn-block">????????? ??????</button>
					</p>
				</div>
			</div>
		</div>

	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>