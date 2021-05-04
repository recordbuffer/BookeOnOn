<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl 사용 위해 -->

<%@ page import="com.semi.group.dao.GroupDao" %>
<%@ page import="com.semi.group.dto.GroupMappingDto" %>
<%@ page import="com.semi.login.dto.LoginDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.group_square {
		position: relative;
		box-shadow: 0 1px 1px 0px rgb(0 0 0/ 5%);
		display: inline-block;
		vertical-align: top;
		margin: 0 10px 22px 10px;
		padding: 25px 20px 0;
		width: 232px;
		height: 190px;
		border-radius: 10px;
		cursor: pointer;
		font-weight: bold;
		font-size: 18px;
		color: white;
	}
	.s1 {background-color: #ffe800;}
    .s2 {background-color: #148cff;}
    .s3 {background-color: #ff28a7;}
    .s4 {background-color: #52e4dc;}
</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		/* $(".group_square").click(function() {
			var group_name = $(this).text().trim();  //클릭한 div의 text(그룹이름) 를 가져온다, 좌우의 공백은 제거해서(trim())
			alert(group_name + "의 게시판으로 이동!");
		}); */
		
		$(".group_square").click(function() {
			var group_name = $(this).text().trim();
			location.href="GroupController.do?command=groupBoard&groupName="+group_name;
		});
		
		var order=true;
		$(".group_square").each(function(index){
			if(index%2==0){
				$(this).addClass( 's1');
				order=false;
			}else if(index%3==0){
				$(this).addClass( 's3');
				order=false;
			}
			else if(index%5==0){
				$(this).addClass( 's4');
				order=false;
			}else{
				$(this).addClass( 's2');
				order=true;
			}
		});
		
	});

</script>


</head>
<body>
<!-- groupMain.jsp -->
<!-- 해당 회원이 참여중인 그룹 전체 리스트 조회하여 화면에 띄워주기 -->

<%
	LoginDto dto = (LoginDto) session.getAttribute("loginDto"); //세션에 담겨있는 회원 정보 get

	GroupDao dao = new GroupDao();
	List<GroupMappingDto> list = dao.selectGroupAll(dto.getId());
	pageContext.setAttribute("list", list);
%>



	<div>
	
		<c:forEach var="list" items="${list}">
			<div class="group_square">
				<c:out value="${list.group_name }"></c:out>
			</div>
		</c:forEach>
	
	</div>
	





</body>
</html>