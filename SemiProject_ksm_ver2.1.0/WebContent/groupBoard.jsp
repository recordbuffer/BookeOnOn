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

#inviteButton{
	text-align: center;
    font-size: 16px;
    font-weight: 700;
    display: inline-block;
    margin: 0 auto;
    width: 274px;
    height: 50px;
    line-height: 50px;
    color: #fff;
    background-color: #e96065;
    background-repeat: no-repeat;
    border-left: 1px solid #ececec;
    border-right: 1px solid #ececec;
    border-bottom: 1px solid #e0e0e0;
    border-radius: 3px;
    cursor: pointer;
}


#inviteFormBg{
    background-color: rgba(0, 0, 0, 0.4);
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 100;
    display: none;
}
#inviteForm{
    width: 300px;
    height: 300px;
    top: 200px;
	left: 700px;
    padding: 20px 50px 50px 50px;
    position: absolute;
    background-color: ghostwhite;
    box-shadow: 5px 5px gray;
    z-index: 101;
    display: none;
    text-align: center;
}

#invBtn{
    width: 100px;
    height: 40px;
}
#closeX{
    cursor: pointer;
    font-size: 30px;
    font-weight: 300;
    
}

</style>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function logoClick() {
		location.href = "controller.jsp?command=main";
	}
	$(document).ready(function() {
		$("#divaside").load("main_aside.jsp");
		$("#divheader").load("main_header.jsp");
	});
	
	
	function inviteForm() {
        $("#inviteFormBg").css('display', 'block');
        $("#inviteForm").css('display', 'block');
    }
    function closeX() {
        $("#inviteFormBg").css('display', 'none');
        $("#inviteForm").css('display', 'none');
    }
	
    
</script>

</head>
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
		<div style="float:left; width:1050px">
<%
	//String groupName = (String)request.getAttribute("groupName");
	//System.out.println(groupName);
	
%>
	
			${groupName }의 게시판 페이지 입니다. <br><br><br>
			게시판 목록 부분 
		</div>
		
		<div style="float:left; width:auto;">
			<a id="inviteButton" onclick="inviteForm();">초대하기</a>


			<br><br><br>
			<h3><label>그룹 멤버</label></h3>
			<div id="groupMemberListDiv">
				<c:forEach var="list" items="${groupMemberList}">
					<div>
						<c:out value="${list.name }"></c:out>님
						(<c:out value="${list.member_id }"></c:out>)
					</div>
				</c:forEach>

			</div>


		</div>	

        <div id="inviteFormBg">
            <div id="inviteForm">
            	<form action="GroupController.do?command=inviteGroup" method="post">
            	<input type="hidden" name="group_name" value="${groupName }">
	                <div style="text-align: right;"><a id="closeX" onclick="closeX();">&nbsp;x&nbsp;</a></div>
	                <br><br>
	                <h3 style="text-align: left;">초대할 회원 ID 입력</h3>
	                <input type="text" id="receiver_id" name="receiver_id" style="height: 20px; width: 300px;">
	                <br><br><br><br>
	                <input type="submit" id="invBtn" value="초대하기">
                </form>
            </div>
        </div>
		
	
	</div>

</main>


</body>
</html>