<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="com.mvc.book.controller.BookController"%>
<%@page import="com.mvc.book.model.dto.BookInfodto" %>
<%@page import="java.util.List" %>
<%
String query = request.getParameter("query");
String sort = "accuracy";

String temp = request.getParameter("sort");	// accuracy or recency
if(temp != null){
	sort = temp;
}

BookController control = new BookController();

List<BookInfodto> books;
try{
	books = control.getBookList(query, sort);
}catch(Exception e){
	books = new ArrayList<BookInfodto>();
}
%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>booksearchpage_res</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

<link rel="stylesheet" href="resources/css/searchpage.css" type="text/css">

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="./css/Bookserchcardview.css"/>
	
<style type="text/css">
#mainnav {
	background-color: #b5e3d8 !important;
}

#mainhd {
	background-color: #f5f5f5 !important;
}

#mainbody {
	background-color: #f5f5f5 !important;
}

#hddiv {
	background-color: rgb(119, 109, 97) !important;
	margin-top: 50px;
}

#hddiv1 {
	background-color: rgb(119, 109, 97) !important;
	padding: 0.5rem;
}

p>button{
	background-color: rgb(181, 227, 216) !important;
}

.test {
    background: rgb(119, 109, 97);
    width: 40%;
    position: absolute;
    left: 20px;
    bottom: 10px;
}

.test1 {
    background: rgb(119, 109, 97);
    width: 40%;
    position: absolute;
    right: 5%;
    bottom: 10px;
}

#pt-0 {
    padding-top: 0!important;
    position: relative;
    height: 750px;
}

#imgsize {
    width: 200px;
    height: 300px;
    position: relative;
    left: 100px;
}

#card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #f5f5f5;
    background-clip: border-box;
    border: 1px solid rgb(119, 109, 97);
    border-radius: .25rem;
}

</style>
</head>

<body style="background-color: #f5f5f5;">

	<jsp:include page="../header.jsp"></jsp:include>
	<br>
	<br>
	
	<!-- Header -->
	<header class="bg-primary py-2 mb-5" id="mainhd">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-lg-12" id="hddiv">
					<h1 class="display-4 text-white mt-1 mb-1">
						<button type="button" class="btn btn-dark">북이온앤온 검색하기</button>
						<form class="d-flex" action="bres.do">
							<input class="form-control me-2" type="text" name="query" placeholder="Search"
								<%if(query != null) { %>
								value="<%=query %>"
								<%} %>
								aria-label="Search">&nbsp; 
							<input class="btn btn-outline-dark" type="submit" value="Search">
						</form>
					</h1>
				</div>
			</div>
		</div>
	</header>
	
	<!-- Page Content -->
	
	
		<section>
		<div class="container">
			<div class="row ">
				<%
				for(int i=0; i<books.size(); i++){
					BookInfodto item = books.get(i);
				%>
					<!--Profile Card 5-->
					<div class="col-md-4 mt-4">
						<div class="card profile-card-5" id="card">
							<br>
							<div class="card-img-block" >
							<a href="<%=item.getUrl() %>"><img class="card-img-top" id="imgsize" src="<%=item.getThumbnail() %>" alt="Card image cap"></a>
							</div>
							<br>
							<div class="card-body pt-0" id="pt-0">
								<h4 class="card-title"><a href="<%=item.getUrl() %>"><%=item.getTitle() %></a></h4>
								<br>
								<h4 class="card-text">저자: <%=item.getAuthors()[0] %></h4>
								<h5 class="card-text">책소개<br><%=item.getContents() %></h5>
								<br>
								<h5 class="mt-3 w-100 float-left text-center"><%=item.getPublisher() %></h5>
								<br><br><br>
								<h5 class="mt-3 w-100 float-left text-center">가격: <%=item.getSale_price() %>원</h5>
							</div>
					<form action="kakaoW.do" method="post">
						<input type="hidden" name="cover" value="<%=item.getThumbnail() %>">
						<input type="hidden" name="title" value="<%=item.getTitle() %>"/>
						<input type="hidden" name="authors" value="<%=item.getAuthors()[0] %>"/>
						<input type="hidden" name="contents" value="<%=item.getContents() %>"/>
						<input class="test" type="submit" value="읽고싶어요"><!-- 읽고싶어요는 상세보기안에 만들기 (일고싶어요랑 읽었어요)-->
					</form>
					<form action="kakaodb.do" method="post">
						<input type="hidden" name="cover" value="<%=item.getThumbnail() %>">
						<input type="hidden" name="title" value="<%=item.getTitle() %>"/>
						<input type="hidden" name="authors" value="<%=item.getAuthors()[0] %>"/>
						<input type="hidden" name="contents" value="<%=item.getContents() %>"/>
						<input class="test1" type="submit" value="읽었어요">
					</form>
						</div>
					</div>
					<%} %>
				</div>
				<div style="height: 70px"></div>
			</div>
	</section>
	
	<br>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>