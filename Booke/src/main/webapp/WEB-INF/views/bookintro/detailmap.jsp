<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	width: 980px;
	height: 0px;
}

.detailmap {
	width: 70%;
	height: 400px;
	position: relative;
}

.detailaddr {
	width: 285px;
    height: 400px;
    position: relative;
    left: 71%;
    top: -402px;
}

#sample5_address{
	width: 97%;
    height: 55px;
    text-align: center;
}

#library{
	border: 5px solid rgb(119, 109, 097);
    width: 100%;
    height: 40%;
    top: 10px;
    background: rgb(181, 227, 216);
}

#store{
	border: 5px solid rgb(119, 109, 097);
    width: 100%;
    height: 40%;
    position: relative;
    top: 10px;
    background: rgb(181, 227, 216);

}
</style>
</head>
<body>
	<div class="detailmap">
		<div id="map" style="width: 100%; height: 100%;"></div>
	</div>
	<div class="detailaddr">
		<input type="text" id="sample5_address" placeholder="주소"> 
		<input type="button" id="library" onclick="library();" value="주변 도서관 찾기">
		<input type="button" id="store" onclick="store();" value="주변 서점 찾기">
		<div id="map" style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ec334948643a95282b6e3466aaebc54&libraries=services"></script>
		<script type="text/javascript" src="js/detailmap.js"></script>
	</div>
</body>
</html>