<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	background-color: rgb(181, 227, 216);
}

.exit{
	width: 50px;
	height: 50px;
	border-radius: 50px;
	background-color: rgb(181, 227, 216);
	position: relative;
	left: 90%;
	border: 5px solid rgb(119, 109, 97);
}

.exit:hover{
	box-shadow: 1px 1px 20px black;
}

.detail{
	border: 5px solid rgb(119, 109, 97);
    width: 94%;
    height: 400px;
    margin: 20px;	
    background-color: #f5f5f5;
}

.comment{
	border: 5px solid rgb(119, 109, 97);
    width: 94%;
    height: 261px;
    margin: 20px;
}

.cover{
	border: 5px solid rgb(119, 109, 97);
    width: 180px;
    height: 255px;
    position: relative;
    margin: 20px;
}
.intro{
	border: 5px solid rgb(119, 109, 97);
    width: 372px;
    height: 255px;
    position: relative;
    left: 240px;
    top: -285px;
}
.content{
	border: 5px solid rgb(119, 109, 97);
    width: 592px;
    height: 100px;
    position: relative;
    top: -282px;
    left: 20px;
}
.date{
	border: 5px solid rgb(119, 109, 97);
    width: 175px;
    height: 40px;
    position: absolute;
    left: 183px;
    top: 139px;
}
.btn{
	border: 5px solid rgb(119, 109, 97);
    width: 160px;
    height: 50px;
    left: 10px;
    top: 40px;
    position: relative;
}
</style>
</head>
<body>
	<button class="exit"><img  src="resources/images/exit.png" style="width: 30px; height: 30px;"></button>
	
	<div class="detail">
		<div class="cover"></div>
		<div class="intro">
			<h3>김미경의 리부트</h3>
			<p>김미경        웅진 출판사 </p>
			<input class="btn" type="button" value="읽은 책 담기">
			<div class="date"></div>
		</div>
		<div class="content">
			코로나 도서 500여 종 中 베스트셀러 1위의 화제작 <br>
			변화의 흐름을 꿰뚫어 본 130만 유튜버 김미경의 코로나 이후 생존법!<br>
		</div>
	</div>
	<div class="comment">
	
	</div>
</body>
</html>