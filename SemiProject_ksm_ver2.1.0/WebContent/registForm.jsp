<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		#regiForm{
			width: 500px;
			height: 580px;
			margin: 150px auto 90px auto;
        	adding: 40px 60px;
       	 	/* background-color: #f2f3f4; */
       	 	padding: 20px 20px 20px 20px;
		}
		#inputForm{
			width: 400px;
			height: 400px;
			/* background-color: yellowgreen; */ 
			margin-left:50px; 
		}
		#buttonForm{
			width: 420px;
			height: 100px;
			/* background-color: green;  */
			margin-left:40px;  
		}
		.inputLabel{
			font-size: 25px;
			font-weight: bold;
		}
		input[type=text],input[type=password]{
			width: 400px;
	        height: 50px;
	        line-height: 50px;
	        padding-left: 10px;
	        font-size: 16px;
	        border: 0;
	        background-color: #f2f3f4;
		}
		input[type=submit]{
			display: inline-block;
	        min-width: 380px;
	        height: 60px;
	        line-height: 60px;
	        font-size: 30px;
	        font-weight: 500;
	        color: #fff;
	        text-align: center;
	        background-color: #cccdd0;
	        margin-top: 40px;
	        margin-left: 20px;
		}
		
	</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function logoClick() {
		location.href = "LoginController.do?command=login";
	}
	
	$(function() {
		$("#submitBtn").click(function() {
            var id = $("input[name=id]").val();
            var name = $("input[name=name]").val();
            var pw = $("input[name=pw]").val();
            var pwchk = $("input[name=pwchk]").val();

            if(id=="" || name=="" || pw=="" || pwchk==""){
                alert("누락된 정보가 있습니다. \n회원정보를 모두 입력해주세요!");
                return false;
            }

            if(pw != pwchk){
                alert("비밀번호 확인이 일치하지 않습니다. \n다시 확인해주세요");
                return false;
            }
        });
	});
	
</script>


</head>
<body>

	<div id="divHeader">
        <button onclick="logoClick();" style="float: left; margin-top: 18px; margin-left: 20px;">로고</button> 
        <h2 style="float: left; margin-top: 13px;">&nbsp;&nbsp;| 회원가입</h2>
    </div>
	
	<form action="LoginController.do?command=registProc" method="post">
		<div id="regiForm">
			<div id="inputForm">
				<label class="inputLabel">아이디</label><br>
				<input type="text" name="id"><br><br>
				
				<label class="inputLabel">이름</label><br>
				<input type="text" name="name"><br><br>
				
				<label class="inputLabel">비밀번호</label><br>
				<input type="password" name="pw"><br><br>
				
				<label class="inputLabel">비밀번호 확인</label><br>
				<input type="password" name="pwchk"><br><br>
			</div>
			<div id="buttonForm">
				<input type="submit" id="submitBtn" value="가 입">
			</div>
		</div>
	</form>
	
	
	
	
	
	
	
	
	

</body>
</html>