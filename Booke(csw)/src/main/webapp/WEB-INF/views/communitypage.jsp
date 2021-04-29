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

<link rel="stylesheet" href="resources/css/mainpage.css" type="text/css">

<link rel="stylesheet" href="resources/css/community.css">

<style type="text/css">
#mainnav {
	background-color: #b5e3d8 !important;
}

#mainhd {
	background-color: #fff !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}
</style>
</head>

<body>

	<jsp:include page="headerCommunity.jsp"></jsp:include>
	<br>
	<br>
	
	<!-- Header -->
	<header class="bg-primary py-5 mb-5" id="mainhd">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12" id="hddiv">
					<h1 class="display-4 text-white mt-5 mb-2">인기 도서 BEST</h1>
					<p class="lead mb-5 text-white-50">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Non possimus ab labore provident
						mollitia. Id assumenda voluptate earum corporis facere quibusdam
						quisquam iste ipsa cumque unde nisi, totam quas ipsam.</p>
				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->

	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="container" id="img-thumbnaail_border">
					<div class="row" id="cdb">
						<div class="col-sm-12">
							<br>
							<h1>&nbsp;&nbsp;<span class="badge" style="font-size: 130%; background-color: rgb(181, 227, 216);">회의실</span>
							<span class="btn-group" role="group" aria-label="Basic example" style="left: 60%;">
								
  								<button type="button" class="btn" style="background-color: rgb(119, 109, 097)">설정</button>
  								<button type="button" class="btn" style="background-color: rgb(119, 109, 097)">편집</button>
  
							</span></h1>
							<br>
							<img src="resources/images/Book_icon.JPG" class="img-thumbnail" alt="...">
							<img src="resources/images/Book_icon.JPG" class="img-thumbnail" alt="...">
							<img src="resources/images/Book_icon.JPG" class="img-thumbnail" alt="...">
							<img src="resources/images/Book_icon.JPG" class="img-thumbnail" alt="...">
							<img src="resources/images/Book_icon.JPG" class="img-thumbnail" alt="...">
						</div>
						<br>
						<br>
						<div class="col-sm-12"></div>
						<br>
						<br>
						<div class="col-sm-12"></div>
					</div>
				</div>

			</div>
			<div class="col-sm-4">
				<div class="container">
					<div class="row">
						<div class="col-sm-12"></div>
						<div class="col-sm-12">로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창 로그인창
						로그인창 로그인창 로그인창 로그인창</div>
						
					</div>
				</div>


			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>