<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    padding-top: 80px;
    background-color: #f5f5f5;
}

.form-signup {
    width: 100%;
    max-width: 80%;
    padding: 15px;
    margin: auto;
}

.form-control {
    padding: 0.5rem;
}

#hddiv {
    background-color: rgb(119, 109, 97) !important;
    padding: 0.5rem;
}

#dvres{
    height: 270px;
}
</style>
</head>

<body>

    <jsp:include page="header.jsp"></jsp:include>
    <br>
    <br>

    <main class="form-signup">
        <h1 style="margin-bottom: 30px;">Private Place For U</h1>

        <!-- 친구 리스트 테이블 tr tr td  -->
        <section>
            <style>
table, th, td {
  border: 1px solid black;
  border-collapse: seperate;
  text-align:center;
  table-align:center;
}
th, td {
  padding: 15px;
}
</style>
</head>
<body>


<table style="width:70%">
  <tr>
    <th>개인정보수정</th>
    <th>쪽지관리</th> 
    <th>친구관리</th>
  </tr>
</table>
<table style="width:70%">
  <tr>
    <td><strong>감성 이   미 지</strong></td>
    <td><strong>홀  룰  루</strong></td>
    <td><strong>회원탈퇴</strong></td>
  </tr>
</table>

        </section>
        

    </main>


</body>

</html>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>