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

<script type="text/javascript">
	function acceptBtnClick(groupName, sender_id) {
		location.href="GroupController.do?command=acceptBtnClick&groupName="+groupName+"&sender_id="+sender_id;
		alert("수락하였습니다.");
		
	}
	
	function rejectBtnClikc(groupName, sender_id) {
		location.href="GroupController.do?command=rejectBtnClikc&groupName="+groupName+"&sender_id="+sender_id;
		alert("거절하였습니다.");
	}
	
</script>


</head>
<body>

	<c:forEach var="list" items="${groupInvitationList }">
		&lt;<c:out value="${list.sender_id }"></c:out>&gt;님이&nbsp;
		&lt;<c:out value="${list.group_name }"></c:out>&gt;그룹으로 초대하였습니다.&nbsp;&nbsp;&nbsp;&nbsp;
		<button id="acceptBtn" onclick="acceptBtnClick('${list.group_name }', '${list.sender_id }');">수락</button>&nbsp;&nbsp;
		<button id="rejectBtn" onclick="rejectBtnClikc('${list.group_name }', '${list.sender_id }')">거절</button>
		<br>
	</c:forEach>





</body>
</html>