<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book e On&On</title>


<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style type="text/css">
body {
	display: flex;
	align-items: center;
	padding-top: 40px;
	padding-bottom: 20px;
	background-color: rgb(126,196,204);
}
.text-center {
	text-align: center !important;
}
.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}
th{
	width:100px;
	font-weight:400;
}
td{
	padding: 0.5rem;
}
td>#btn {
	background-color: rgb(100, 172, 184);
	width:200px;
	border: none;
	font-size: 14pt;
	
}
</style>
</head>
	<script type="text/javascript">
	function confirm(bool){
		if(bool=="true"){
			opener.document.getElementsByName("be_pw")[0].focus();
			opener.document.getElementsByName("be_id")[0].title="y";
		}else{
			opener.document.getElementsByName("be_id")[0].focus();
		}
		self.close();
		
	}
	
	// 화면이 다 그려진 이후 실행됨.
	$(document).ready(function(){
		$("#btn").click(function(){
			var goUrl = "/book/checkId.do";
			
			$.ajax({
				url: goUrl,
				type: "post",
				data: {
					"be_id": $("#be_id").val()
				},
				dataType: "json",
				success: function(data) {
					//결과확인
					console.log(JSON.stringify(data));
					
					//true 인경우 중복된 아이디로 표기
					if (data.result) {
						$("#result").html("중복된 아이디");
					} else {
						$("#result").html("사용 가능한 아이디");
					}
					
					$("#resultTd").show();
				},
				error: function(request,status,error) {
				    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				}
			})
		});
	});
</script>
<body class="text-center">
	<main class="form-signin">
	<img class="mb-4" src="resources/images/bk.gif" alt="#" width="130">
		<br> <br>
		<div style="background-color: #f5f5f5;">
		<table border="1">
		
			<tr>
				<th>아이디</th>
				<!-- <td>아이디 값 여기에 들어감</td> -->
				<td><input type="text" class="form-control" id="be_id" name="be_id"></td>
			</tr>
			<tr id="resultTd" style="display:none;">
				<td colspan="2"><span id="result">사용 가능한 아이디 / 중복된 아이디</span> 입니다.</td>
			</tr>
			<tr>
				<td colspan="2" style="background-color: rgb(100, 172, 184);"><input type="button" value="확인" class="form-control" id="btn"></td>
			</tr>
		</table>
		</div>
	</main>
</body>
</html>