<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
header {
	width: 100%;
	height: 60px;
	margin: 0;
	min-width: 870px;
	position: fixed;
	background-color: gray;
	left: 0;
	right: 0;
}

.headerBtn{
        margin-top: 18px;
    }
    .right{
        float: right;
        margin-right: 10px;
    }
    #logoBtn{
        margin-left: 20px;
    }
    .navMenu{
        margin-left: 20px;
    }


</style>

<script type="text/javascript">
    function logoClick() {
        location.href="LoginController.do?command=main";
    }

    function logOut() {
		location.href="LoginController.do?command=logout";
		
		alert("로그아웃 되었습니다!");
		location.href="LoginController.do?command=login";
	}
    
    function noticeBtnClick() {
    	var url = "GroupController.do?command=noticePopup";
        var name = "noticePopup";
        var option = "width = 700, height = 300, top = 300, left = 600, location = yes, scrollbars = yes"
        window.open(url, name, option);
	} 
	
	
</script>



</head>
<body>

<header>
    <div id="divheader">
        <button id="logoBtn" class="headerBtn" onclick="logoClick();">로고</button>
        <button id="noticeBtn" class="right headerBtn" onclick="noticeBtnClick()">알림</button>
        <button id="myPageBtn" class="right headerBtn">마이페이지</button>
        <button id="logOutBtn" class="right headerBtn" onclick="logOut();">로그아웃</button>
    </div>
</header>





</body>
</html>