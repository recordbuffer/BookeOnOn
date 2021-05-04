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
	#index_header {
		width: 100%;
		height: 60px;
		margin: 0 auto;
		min-width: 870px;
		position: relative;
		background-color: gray;
		left: 0;
		right: 0;
	}
	.index_login{
		margin-top: 18px;
        float: right;
        margin-right: 10px;
    }
   	.index_regist{
   		margin-top: 18px;
   		float: right;
        margin-right: 10px;
   	}
    #logoBtn{
        margin-left: 20px;
        background-color: gray;
        border: 0px;
    }
    .navMenu{
        margin-left: 20px;
    }
	.headerBtn{
        margin-top: 18px;
    }
	#logoBtn{
        margin-left: 20px;
        background-color: gray;
        border: 0px;
    }
     .btn_logo{
    	margin-left: 5px;
    	width: 40px;
    	height: 35px;
    }
    #wording{
    	margin-top: 30px;
    	font-size: 25pt;
    }
    #main_1{
    	margin-top: -150px;
    	margin-left: 750px;
    	width: 600px;
    	height: 450px
    }
</style>
<script type="text/javascript">
	function loginClick(){
		location.href="LoginController.do?command=login";
	}
	function registClick(){
		location.href="LoginController.do?command=registForm";
	}
</script>
</head>
<body>
	<div id="index_header">
		<button id="logoBtn" class="headerBtn" onclick="logoClick();" style="margin-top: 9px; color: white; font-size: 27pt;">
		<img class="btn_logo" src="image/cd.jpg">&nbsp;<strong>코드 다이어리</strong></button>
		
		<button id="index_login" class="index_login" onclick="loginClick();">로그인</button>
		<button id="index_regist" class="index_regist" onclick="registClick();">회원가입</button>
	</div>
	<p id="wording">
		<br>
		&nbsp;&nbsp;<strong>코딩을 처음 배우는 사람들을 위해</strong><br>
		&nbsp;&nbsp;그룹을 만들어 서로 의견을 나누고 공부하며<br>
		&nbsp;&nbsp;개인의 스케줄을 쉽고 편리하게 조율함으로서<br>
		&nbsp;&nbsp;목표달성에 도달해보자.<br>
	</p>
	<img  id="main_1" alt="" src="image/main_2.jpg">
</body>
</html>