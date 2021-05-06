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
	background-color: #f5f5f5 !important;
}

#mainbody {
	background-color: #f5f5f5 !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}

p>button{
	background-color: rgb(181, 227, 216) !important;
}
</style>
</head>

<body style="background-color: #f5f5f5;">

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
						<form class="d-flex" action="bres.do">
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
        <div class="col-lg-4"><img src="resources/images/bookimg1.png"></div>
        <div class="col-lg-4"><img src="resources/images/bookimg2.png"></div>
        <div class="col-lg-4"><img src="resources/images/bookimg3.png"></div>
        <br>
        <div class="col-lg-4"><p><button type="button" class="btn btn-block">자기소개 책 추천</button></p></div>
        <div class="col-lg-4"><p><button type="button" class="btn btn-block">국내 베스트 셀러</button></p></div>
        <div class="col-lg-4"><p><button type="button" class="btn btn-block">해외 배스트 셀러</button></p></div>
    </div>
</div>
	
		
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>