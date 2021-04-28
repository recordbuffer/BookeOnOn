<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body {
	width: 980px;
	height: 0px;
}

.detailmap {
	width: 50%;
	height: 580px;
	border: 1px solid black;
	position: relative;
}

.detailaddr {
	width: 50%;
	height: 580px;
	border: 1px solid black;
	position: relative;
	left: 50%;
	top: -582px;
}
</style>
</head>
<body>
	<div class="detailmap">
		<div id="map" style="width: 100%; height: 100%;"></div>
	</div>
	<div class="detailaddr">
		<input type="text" id="sample5_address" placeholder="�ּ�"> <input
			type="button" onclick="sample5_execDaumPostcode()" value="�ּ� �˻�"><br>
		<div id="map"
			style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
		<script
			src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9ec334948643a95282b6e3466aaebc54&libraries=services"></script>
		<script>
			var mapContainer = document.getElementById('map'), // ������ ǥ���� div
			mapOption = {
				center : new daum.maps.LatLng(37.537187, 127.005476), // ������ �߽���ǥ
				level : 5
			// ������ Ȯ�� ����
			};

			//������ �̸� ����
			var map = new daum.maps.Map(mapContainer, mapOption);
			//�ּ�-��ǥ ��ȯ ��ü�� ����
			var geocoder = new daum.maps.services.Geocoder();
			//��Ŀ�� �̸� ����
			var marker = new daum.maps.Marker({
				position : new daum.maps.LatLng(37.537187, 127.005476),
				map : map
			});

			function sample5_execDaumPostcode() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								var addr = data.address; // ���� �ּ� ����

								// �ּ� ������ �ش� �ʵ忡 �ִ´�.
								document.getElementById("sample5_address").value = addr;
								// �ּҷ� �� ������ �˻�
								geocoder
										.addressSearch(
												data.address,
												function(results, status) {
													// ���������� �˻��� �Ϸ������
													if (status === daum.maps.services.Status.OK) {

														var result = results[0]; //ù��° ����� ���� Ȱ��

														// �ش� �ּҿ� ���� ��ǥ�� �޾Ƽ�
														var coords = new daum.maps.LatLng(
																result.y,
																result.x);
														// ������ �����ش�.
														mapContainer.style.display = "block";
														map.relayout();
														// ���� �߽��� �����Ѵ�.
														map.setCenter(coords);
														// ��Ŀ�� ��������� ���� ��ġ�� �ű��.
														marker
																.setPosition(coords)
													}
												});
							}
						}).open();
			}
		</script>
	</div>
</body>
</html>