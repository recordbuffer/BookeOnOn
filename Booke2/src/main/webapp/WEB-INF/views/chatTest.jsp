<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소켓 서버</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" href="resources/css/communityMain.css"
	type="text/css">

<link rel="stylesheet" href="resources/css/communityChat.css"
	type="text/css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

<!-- Client HTML -->
<script>
	var socket = null;

	function connect() {
		var ws = new WebSocket("ws://localhost:8787/replyEcho?bno=1234");
		socket = ws;

		ws.onopen = function() {
			console.log('Info: connection opened.');

		};

		ws.onmessage = function(event) {
			console.log(event.data + '\n');
		};

		ws.onclose = function(event) {
			console.log('Info: connection closed.');
			/* setTimeout(function() {
				connect();
			}, 1000); // retry connection!! */
		};
		ws.onerror = function(err) {
			console.log('Error:', err);
		};
	}
	
	$('#btnSend').on('click', function(evt) {
		evt.preventDeaflt();
		if (socket.readyState !== 1)
			return;
		let msg = $('input#msg').val();
		socket.send(msg);
	});
</script>
</head>
<body>




























</body>
</html>


