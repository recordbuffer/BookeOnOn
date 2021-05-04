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
	body{
        margin: 0px;
    }
    #divHeader{
        width: 100%;
        height: 60px;
        margin: 0 auto;
        min-width: 870px;
        position: relative;
        background-color: gray; 
    }
    #loginBox{
        margin: 150px auto 90px auto;
        width: 380px;
        height: 400px;
        padding: 40px 60px;
        background-color: #f2f3f4;
    }
    #loginBoxIn{
        /* background-color: green; */
        width: 100%;
        height: 100%;
    }
    #userId{
        width: 330px;
        height: 50px;
        line-height: 50px;
        padding-left: 10px;
        margin-left: 20px;
        font-size: 16px;
        border: 0;
        background-color: #f2f3f4;
    }
    #userPw{
        width: 330px;
        height: 50px;
        line-height: 50px;
        padding-left: 10px;
        margin-left: 20px;
        margin-top: 20px;
        font-size: 16px;
        border: 0;
        background-color: #f2f3f4;
    }
    #loginBtn{
        display: inline-block;
        min-width: 380px;
        height: 60px;
        line-height: 60px;
        font-size: 18px;
        font-weight: 500;
        color: #fff;
        text-align: center;
        background-color: #cccdd0;
        margin-top: 50px;
    }
    #regiText{
    	text-decoration: none;
    	color: white;
    	font-weight: bold;
    	font-size: x-large;
    	float: right;
    	margin-right: 20px; 
    	margin-top: 12px; 
    }
    
    
    
</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		//아이디, 비밀번호를 입력하지 않았을 경우 경고창 띄워주고 submit 이벤트 취소
	    $("#loginBtn").click(function() {
	        var userIdText =  $("#userId").val();
	        var userPwText =  $("#userPw").val();
	
	        if(userIdText=="" || userIdText==null || userPwText=="" || userPwText==null){
	            alert("아이디, 비밀번호를 입력해주세요");
	            return false;
	        }else{
	            return true;
	        }
	    });
	});
	
	function logoClick() {
		location.href = "LoginController.do?command=login";
	}
	
</script>

</head>
<body>

    <div id="divHeader">
        <button onclick="logoClick();" style="float: left; margin-top: 18px; margin-left: 20px;">로고</button> 
        <h2 style="float: left; margin-top: 13px;">&nbsp;&nbsp;| 로그인</h2>
        <a href="LoginController.do?command=registForm" id="regiText">회원가입</a>
    </div>

    <div>
        <div id="loginBox">
        	<form action="LoginController.do?command=loginProc" method="post">
	            <div id="loginBoxIn">
	                <input type="text" id="userId" name="userId" placeholder="아이디">
	                <input type="password" id="userPw" name="userPw" placeholder="비밀번호">
	                <input type="submit" id="loginBtn" value="로그인">
	            </div>
            </form>
        </div>
    </div>





</body>
</html>