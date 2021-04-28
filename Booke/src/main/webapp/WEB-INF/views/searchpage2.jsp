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

		<div class="margin-top_30 col-md-8 offset-md-2 white_fonts">
			<div class="row">
				<div class="col-md-4">
					<div class="full icon text_align_center">
						<img src="resources/icon/위치.png">
					</div>
					<div class="full white_fonts text_align_center">
						<p>
							서울특별시 강남구 역삼동<br>테헤란로14길 6
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="full icon text_align_center">
						<img src="resources/icon/전화.png">
					</div>
					<div class="full white_fonts text_align_center">
						<p>010-123-456</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="full icon text_align_center">
						<img src="resources/icon/편지.png">
					</div>
					<div class="full white_fonts text_align_center">
						<p>naver.com</p>
					</div>
				</div>
			</div>
		</div>

	</main>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>