<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="resources/css/header.css">
</head>
<body>
    <!-- header inner -->
    <div class="header">
        <div class="container">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                <div class="full">
                    <div class="center-desk">
                        <div class="logo">
                            <a href="#"><img src="resources/images/logo1.png" alt="#" style="margin: 0px 0px 0px 50px;"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
                <div class="menu-area">
                    <div class="limit-box menu-area-main">
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
								메뉴 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">서재</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">커뮤니티</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">책소개</a></li>
							</ul>
						</div>
					</div>
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-7 col-sm-7">
                <div class="menu-area">
                    <div class="limit-box menu-area-main1">
                    		<i class="bi bi-gem" style="font-size: 2rem;"></i>
                            <a href="mainpage.do"><i class="bi bi-file-earmark-person-fill"  style="font-size: 2rem;"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="bo"></div>
</body>
</html>