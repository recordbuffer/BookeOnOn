<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#name:hover {
	color: rgb(119, 109, 097);
}

#name {
	color: rgb(178, 138, 135);
	font-weight: bold;
}
</style>

<link rel="stylesheet" href="resources/css/headerCommunity.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- header inner -->
	<div class="header">
		<div class="container">
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
				<div class="full">
					<div class="center-desk">
						<div class="logo">
							<a href="main.do"><img src="resources/images/buck_buck_community.png"
								alt="#" style="margin: -15px 0px 0px -150px;"></a>
						</div>
					</div>
				</div>
			</div>
			<div>
			<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1">
				<div class="menu-area1">
					<div class="limit-box menu-area-main"
						style="margin: 7px 0px 0px -200px;">
						<a id="name" href="bcase.do" style="font-size:15pt;">서재</a>
					</div>
				</div>
			</div>
			<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1">
				<div class="menu-area3">
					<div class="limit-box menu-area-main"
						style="margin: 7px 0px 0px -110px;">
						<a id="name" href="bookintro.do"  style="font-size:15pt;">책 소개</a>
					</div>
				</div>
			</div>
			<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1">
				<div class="menu-area2">
					<div class="limit-box menu-area-main"
						style="margin: 7px 0px 0px 0px;">
						<a id="name" href="communityMain.do"  style="font-size:15pt;">커뮤니티</a>
					</div>
				</div>
			</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
				<div class="menu-area">
					<div class="limit-box menu-area-main1" style="margin: -2px 0px 0px 0px;">
						<a id="name" href="bsearch.do"><i class="bi bi-search" style="font-size: 2rem;"></i></a> 
						<a id="name" href="msgAll.do"><i class="bi bi-chat-text-fill" style="font-size: 2rem; margin:5px;"></i></a>
						<a id="name" href="setting.do"><i class="bi bi-gear-fill" style="font-size: 2rem;"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>