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
    background-color: rgb(255, 255, 204) !important;
    padding: 0.5rem;
}

#dvres{
    height: 270px;
    background-color: rgb(255, 255, 204) !important;
    padding: 0rem;
}
</style>
</head>

<body>

    <jsp:include page="header.jsp"></jsp:include>
    <br>
    <br>

    <main class="form-signup">
        <h1 style="margin-bottom: 20px;"> 쪽지 쓰기</h1>

        <!-- 검색 창 -->
        <div id="hddiv">
            <form class="d-flex">
                <button class="btn btn-outline-dark" type="submit" onclick="location.href='fres.do'">보내기</button>
            </form>
        </div>

        <!-- 친구 리스트 테이블 -->
        <section>
            <div id="dvres">
             <input class="dvres" type="받는사람 아이디" placeholder="받는사람 아이디"
                    aria-label="받는사람">&nbsp;
            <button class="btn btn-outline-dark" type="submit" onclick="location.href='fres.do'">검색</button>
              <div style="border: 3px solid black; float: inherit; width: 97%; padding:85px;">
쪽지 글쓰는 곳
</div>
        </section>
        </div>

    </main>


</body>

</html>
<body>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>