<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 개설</title>
<!-- bootstrap css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- Responsive-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">

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

</head>
<body>
	<h1>Modal Test</h1>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#myModal">+ 소모임 개설</button>



	<!-- Modal -->
	<div class="modal modal-center fade" id="myModal"
		data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel"
						style="text-color: black;">소모임 개설</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="col-mb-12">
						<div class="container">
							<div class="row">
								<div class="col-sm-3 offset-sm-1">
									<div class="card border-success mb-3 "
										style="width: 13rem; height: 18rem">
										<div class="card-header bg-transparent border-success">책마루</div>
										<div class="card-body text-success">
											<h5 class="card-title">이미지나 프로필</h5>
											<p class="card-text">Some quick example text to build on
												the card title and make up the bulk of the card's content.</p>
										</div>
										<div class="card-footer bg-transparent border-success">5명
											참여중</div>
									</div>
								</div>
								<div class="col-sm-7 offset-sm-1">
									<div class="sm-3">
										<br> <label>소모임명</label> <input type="text"
											class="form-control" id="community-name"
											style="width: 350px;"><br>
									</div>
									<div class="sm-3">
										<label>소모임 간단 소개</label>
										<textarea class="form-control" id="message-text"
											style="width: 350px; height: 100px; resize: none;"></textarea>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 offset-sm-1">
									<h3>
										<span class="badge"
											style="background-color: rgb(181, 227, 216);">회원목록</span>
									</h3>
									<div class="friend">
										<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
											integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
											crossorigin="anonymous"></script>
										<script
											src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
											integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
											crossorigin="anonymous"></script>
										<script
											src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
											integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
											crossorigin="anonymous"></script>
										<div id="demo" class="carousel slide" data-ride="carousel">
											<div class="carousel-inner">
												<!-- 슬라이드 쇼 -->
												<div class="carousel-item active">
													<!--가로-->
													<img class="d-block w-100" src="resources/images/slide.jpg"
														alt="First slide">
													<div class="carousel-caption d-none d-md-block">
														<div class="circle friend1">
															<h6 class="nickname">친구1</h6>
														</div>
														<div class="circle friend2">
															<h6 class="nickname">친구2</h6>
														</div>
														<div class="circle friend3">
															<h6 class="nickname">친구3</h6>
														</div>
													</div>
												</div>
												<div class="carousel-item">
													<img class="d-block w-100" src="resources/images/slide.jpg"
														alt="Second slide">
													<div class="carousel-caption d-none d-md-block">
														<div class="circle friend4">
															<h6 class="nickname">친구4</h6>
														</div>
														<div class="circle friend5">
															<h6 class="nickname">친구5</h6>
														</div>
														<div class="circle friend6">
															<h6 class="nickname">친구6</h6>
														</div>
													</div>
												</div>
												<div class="carousel-item">
													<img class="d-block w-100" src="resources/images/slide.jpg"
														alt="Third slide">
													<div class="carousel-caption d-none d-md-block">
														<div class="circle friend7">
															<h6 class="nickname">친구7</h6>
														</div>
														<div class="circle friend8">
															<h6 class="nickname">친구8</h6>
														</div>
														<div class="circle friend9">
															<h6 class="nickname">친구9</h6>
														</div>
													</div>
												</div>
												<!-- / 슬라이드 쇼 끝 -->
												<!-- 왼쪽 오른쪽 화살표 버튼 -->
												<a class="carousel-control-prev" href="#demo"
													data-slide="prev"> <span
													class="carousel-control-prev-icon" aria-hidden="true"></span>
													<!-- <span>Previous</span> -->
												</a> <a class="carousel-control-next" href="#demo"
													data-slide="next"> <span
													class="carousel-control-next-icon" aria-hidden="true"></span>
													<!-- <span>Next</span> -->
												</a>
												<!-- / 화살표 버튼 끝 -->
												<!-- 인디케이터 -->
												<ul class="carousel-indicators">
													<li data-target="#demo" data-slide-to="0" class="active"></li>
													<!--0번부터시작-->
													<li data-target="#demo" data-slide-to="1"></li>
													<li data-target="#demo" data-slide-to="2"></li>
												</ul>
												<!-- 인디케이터 끝 -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>