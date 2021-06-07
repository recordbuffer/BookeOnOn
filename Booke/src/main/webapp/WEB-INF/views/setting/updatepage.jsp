<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book e On&On</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" href="resources/css/mainpage.css" type="text/css">


<style type="text/css">
body {
	align-items: center;
	padding-top: 80px;
	background-color: #f5f5f5;
}
.text-center {
	text-align: center !important;
}
.form-signup {
	width: 100%;
	max-width: 400px;
	padding: 15px;
	margin: auto;
	margin-bottom: 100px;
}
.form-control {
	padding: 0.5rem;
	border: 1px solid;
	color : black !important;
}
th {
	width: 100px;
	font-weight: 400;
}
td {
	padding: 0.5rem;
}
td>#btn {
	height : 60px;
	background-color: rgb(181, 227, 216);
	border: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#btn").click(function(){
			if (validation()) {
				var goUrl = "/book/modifyMember.do";
				
				var params = {
						be_no: $("#be_no").val(),
						be_id: $("#be_id").val(),
						be_pw: $("#be_pw").val(),
						be_nn: $("#be_nn").val(),
						be_addr: $("#be_addr").val()
				}
				
				$.ajax({
					url: goUrl,
					type: "post",
					data: params,
					dataType: "json",
					success: function(data) {
						console.log(JSON.stringify(data));
						
						if (data.result) {
							alert("회원 정보가 수정되었습니다.");
							location.href = "/book/updateform.do"
						} else {
							alert(decodeURIComponent(data.resultMessage));
						}
					},
					error: function(request,status,error) {
					    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
			}
		});
	});
	
	function validation() {
		
		if ($("#be_pw").val().trim().length <= 0) {
			alert("가입 시 등록한 비밀번호를 입력하셔야만 합니다.");
			return false;
		}
		
		return true;
	}
</script>
</head>

<body class="text-center">

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>

	<main class="form-signup">
		<h1>회원 정보 수정</h1>
		<hr style="color:black!important">
		<form id="frm" method="post" onsubmit="return false">
		<input type="hidden" id="be_no" value="${user.be_no}" />
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" class="form-control" name="be_id" id="be_id"
						readonly="readonly" value="${user.be_id}"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" class="form-control" name="be_pw" id="be_pw"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" class="form-control" name="be_name" id="be_name"
						readonly="readonly" value="${user.be_name}"></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" class="form-control" name="be_nn" id="be_nn" value="${user.be_nn}"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" class="form-control" name="be_addr" id="be_addr" value="${user.be_addr}"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" class="form-control" name="be_email" id="be_email"
						readonly="readonly" value="${user.be_email}"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" class="form-control" name="be_phone" id="be_phone"
						readonly="readonly" value="${user.be_phone}"></td>
				</tr>
				<tr>
					<td colspan="3"><input type="submit" value="수정 완료"
						class="form-control" id="btn"
						style="width: 370px; margin-top: 20px; font-size: 14pt;"></td>
				</tr>
			</table>
		</form>
	</main>	
</body>
	<jsp:include page="../footer.jsp"></jsp:include>

</html>