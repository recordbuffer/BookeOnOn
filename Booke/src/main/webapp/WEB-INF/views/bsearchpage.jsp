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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="resources/css/header.css">

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
	
	<div class="container">
    <div class="row">
        <div class="col-lg-4"><img src="resources/images/bookimg1.png"></div>
        <div class="col-lg-4"><img src="resources/images/bookimg2.png"></div>
        <div class="col-lg-4"><img src="resources/images/bookimg3.png"></div>
        <br>
        <div class="col-lg-4"><p><button type="button" class="btn btn-danger btn-block">자기소개 책 추천</button></p></div>
        <div class="col-lg-4"><p><button type="button" class="btn btn-danger btn-block">국내 베스트 셀러</button></p></div>
        <div class="col-lg-4"><p><button type="button" class="btn btn-danger btn-block">해외 배스트 셀러</button></p></div>
    </div>
</div>
	
		
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>