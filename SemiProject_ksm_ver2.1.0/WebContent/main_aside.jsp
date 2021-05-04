<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">
aside {
	/* background-color: skyblue; */
	background-color: rgb(242,242,242);
	width: 200px;
	height: 496px;
	float: left;
	text-align:center;
	line-height: 45px;
	position: fixed;
	margin-top: 60px;
	margin-left: 0px;
}

</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

	function createNewGroup(){
	      var url="createNewGroupPopUp.html";
	      var option="width=450, height=300, top=200";
	      
	      window.open(url, "", option);
	   }

</script>

</head>
<body>

<aside>

<div>

        <a href="javascript:createNewGroup()">새 그룹 생성</a><br>
        <a href="LoginController.do?command=selectAllSchedule">전체 일정 확인</a><br> 
        <a href="LoginController.do?command=selectMyBoard">내 게시글</a><br>
        <a href="LoginController.do?command=freeBoard">자유게시판</a><br>
			
</div>

</aside>

</body>
</html>