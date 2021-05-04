<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style type="text/css">

body {
	margin: 0px;
}


main {
	/* background-color: white; */
	background-color: rgb(242,242,242);
	width: auto;
	height: 1000px;
	box-sizing:border-box;
	padding-right: 200px;
	padding-left:250px;
	padding-top:100px;
	
}
</style>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    function logoClick() {
        location.href="controller.jsp?command=main";
    }
    
   $(document).ready( function() {
	   
	   $("#divaside").load("main_aside.jsp");
	   $("#divheader").load("main_header.jsp");
	   
	   
   });


</script>

<body>

<header>
	<div id="divheader">

	</div>
	
</header>


<aside>

	<div id="divaside">
	
	</div>

</aside>

<main>
	<div id="divmain">
		<%@ include file="groupMain.jsp" %>
	</div>


</main>


</body>
</html>