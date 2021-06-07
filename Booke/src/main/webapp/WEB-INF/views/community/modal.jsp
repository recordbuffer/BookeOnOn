<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Modal -->
	<div class="modal modal-center fade" id="myModal"
		data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel" style="color: black;">소통방
						개설</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="col-mb-12">
						<div class="container">
							<div class="row">
								<div class="col-sm-3">
									<div class="card border-dark mb-3"
										style="width: 15rem; height: 20rem">
										<div class="card-header bg-transparent border-dark">.</div>
										<div class="card-body text-dark">
											<h5 class="card-title">소통방 명</h5>
											<p class="card-text">소통방 간단 소개</p>
										</div>
										<div class="card-footer bg-transparent border-dark">.
										</div>
									</div>
								</div>
								<div class="col-sm-5 offset-sm-2">
									<br>
									<p id="community-name-name">소모임명</p>
									<input type="text" class="form-control" id="community-name"
										style="width: 350px;"> <br>

									<p id="message-text-text">소모임 간단 소개</p>
									<textarea class="form-control" id="message-text"
										style="width: 350px; height: 100px; resize: none;"></textarea>

								</div>
							</div>
							<div class="row">
								<div class="col-sm-2">
									<h3>
										<span class="badge"
											style="background-color: rgb(243, 193, 188);">회원목록</span>
									</h3>
									<div></div>

								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>