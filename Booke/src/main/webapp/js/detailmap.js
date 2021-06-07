			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			mapOption = {
				center : new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
				level : 5
			// 지도의 확대 레벨
			};

			//지도를 미리 생성
			var map = new daum.maps.Map(mapContainer, mapOption);
			//주소-좌표 변환 객체를 생성
			var geocoder = new daum.maps.services.Geocoder();
			//마커를 미리 생성
			var marker = new daum.maps.Marker({
				position : new daum.maps.LatLng(37.537187, 127.005476),
				map : map
			});
			
			function library(){
				new daum.Postcode({oncomplete : function(data) {
					var addr = data.address; // 최종 주소 변수

					// 주소 정보를 해당 필드에 넣는다.
					document.getElementById("sample5_address").value = addr;
					// 주소로 상세 정보를 검색
					geocoder.addressSearch(data.address,function(results, status) {
					// 정상적으로 검색이 완료됐으면
					if (status === daum.maps.services.Status.OK) {

					var result = results[0]; //첫번째 결과의 값을 활용

					// 해당 주소에 대한 좌표를 받아서
					var coords = new daum.maps.LatLng(result.y, result.x);
					// 지도를 보여준다.
					mapContainer.style.display = "block";
					map.relayout();
					// 지도 중심을 변경한다.
					map.setCenter(coords);
					// 마커를 결과값으로 받은 위치로 옮긴다.
					marker.setPosition(coords)
					}
					});
				}
			}).open();
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
			    mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			 
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
				//강남구
			    {
			        content: '<div>강남구립못골도서관</div><div>02-459-5522</div><div>평일 : 09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.47153836, 127.096582)
			    },
			    {
			        content: '<div>강남역삼푸른솔도서관</div><div>02-2051-1178</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4964968, 127.0320274)
			    },
			    {
			        content: '<div>국립어린이청소년도서관</div><div>02-3413-4800</div><div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50090187, 127.0296764)
			    },
			    {
			        content: '<div>꿈밭작은도서관</div><div>02-3462-9962</div><div>평일 주말: 10:00~17:00(상시운영) </div>', 
			        latlng: new kakao.maps.LatLng(37.47375667, 127.104168)
			    },
			    {
			        content: '<div>대치도서관</div><div>02-565-6666</div><div>평일 : 6:00~21:00 주말 : 06:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.49879449, 127.066997)
			    },
			    //강동구
			    {
			        content: '<div>강동구립성내도서관</div><div>02-471-1071</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.53283244, 127.1333354)
			    },
			    {
			        content: '<div>게냇골작은도서관</div><div>02-428-7041</div><div>평일 : 13:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.550583747471, 127.168300419219)
			    },
			    {
			        content: '<div>롯데캐슬도서관</div><div>070-8702-1899</div><div>평일 : 09:00~17:00 주말 : 09:00~17:30</div>', 
			        latlng: new kakao.maps.LatLng(37.55639905, 127.1401469)
			    },
			    {
			        content: '<div>반석도서관</div><div>070-7437-2734</div><div>평일 : 11:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.54225826, 127.143603)
			    },
			    {
			        content: '<div>함께크는우리</div><div>02-428-4686</div><div>평일 : 10:00~18:00 주말 : 10:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.559302686082, 127.151682704341)
			    },
			    //강북구
			    {
			        content: '<div>강북새희망도서관</div><div>02-991-5133</div><div>평일 : 13:00~19:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.63681136, 127.0159405)
			    },
			    {
			        content: '<div>미아문화정보도서관</div><div>02-944-3180</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.62709228, 127.0269757)
			    },
			    {
			        content: '<div>벧엘도서관</div><div>02-989-5590</div><div>평일 : 10:00~16:00 주말 : 10:00~13:00(토) 10:00~15:00(일)</div>', 
			        latlng: new kakao.maps.LatLng(37.61616064, 127.0173591)
			    },
			    {
			        content: '<div>솔샘문화정보도서관</div><div>02-944-3150</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00', 
			        latlng: new kakao.maps.LatLng(37.62047806, 127.0124026)
			    },
			    {
			        content: '<div>작은도서관두루</div><div>02-901-0239</div><div>평일 : 13:00~19:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.62946981, 127.0197854)
			    },
			    //강서구
			    {
			        content: '<div>가양도서관</div><div>02-3665-8797</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55994851, 126.8655346)
			    },
			    {
			        content: '<div>곰달래도서관</div><div>02-2065-3785</div><div>자료실(평일주말) : 09:00~22:00 / 학습열람실(평일주말) : 07:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.52905938, 126.8488976)
			    },
			    {
			        content: '<div>등빛도서관</div><div>02-3664-6990</div><div>평일 : 09:00~18:00 주말 : 토요일:09:00~18:00 일요일:09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56245409, 126.8423739)
			    },
			    {
			        content: '<div>서울특별시교육청강서도서관</div><div>02-3219-7000</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5479003, 126.8599262)
			    },
			    {
			        content: '<div>희망문고</div><div>02-2690-0511</div><div>평일 : 11:00~17:00 주말 : 11:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5385771, 126.8354767)
			    },
			    //관악구
			    {
			        content: '<div>관악문화관도서관</div><div>02-828-5700</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.46759816, 126.9448714)
			    },
			    {
			        content: '<div>글빛정보도서관</div><div>02-878-7460</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4862426, 126.9596701)
			    },
			    {
			        content: '<div>꿈마을도서관</div><div>02-886-3196</div><div>평일 : 10:00~18:00 주말 : 10:00~16:00</div>', 
			        latlng: new kakao.maps.LatLng(37.48714477, 126.8901557)
			    },
			    {
			        content: '<div>블루밍문고</div><div>02-877-9864</div><div>평일 : 13:00~17:00 주말 : 11:00~14:00</div>', 
			        latlng: new kakao.maps.LatLng(37.49066216, 126.9442455)
			    },
			    {
			        content: '<div>조원도서관</div><div>02-851-5571-2</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.48256322, 126.9077952)
			    },
			    //광진구
			    {
			        content: '<div>운룡도서관</div><div>02-454-3431</div><div>평일 : 10:00~18:00 주말 : 10:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55419292, 127.0893539)
			    },
			    {
			        content: '<div>자양한강도서관</div><div>02-456-0048</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5292155199266, 127.077667985801)
			    },
			    {
			        content: '<div>평강마을도서관</div><div>02-453-6238</div><div>평일 : 09:00~17:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.53157833, 127.0760941)
			    },
			    {
			        content: '<div>푸른꿈도서관</div><div>02-446-8412</div><div>평일 : 09:30~17:30 주말 : 10:30~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.54436121, 127.0880267)
			    },
			    {
			        content: '<div>하람도서관</div><div>02-475-7791</div><div>평일 : 11:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.56213142, 127.0883493)
			    },
			    //구로구
			    {
			        content: '<div>가리봉동도서관</div><div>02-860-2518</div><div>평일 : 10:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.48413635, 126.8840475)
			    },
			    {
			        content: '<div>구로기적의도서관</div><div>02-2632-8878</div><div>평일 : 10:00~20:00 주말 : 10:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50673545, 126.877376)
			    },
			    {
			        content: '<div>길숲도서관</div><div>070-8987-6591</div><div>평일 : 13:00~18:00 주말 : 10:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50770108, 126.8784577)
			    },
			    {
			        content: '<div>꿈마을도서관</div><div>02-830-5807</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.48714477, 126.8901557)
			    },
			    {
			        content: '<div>온누리도서관</div><div>02-858-9080</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.49751199, 126.8854812)
			    },
			    //금천구
			    {
			        content: '<div>금천구립시흥도서관</div><div>02-809-8242</div><div>평일 : 07:00~22:00 주말 : 07:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4496304162832, 126.91461133809)
			    },
			    {
			        content: '<div>도란도란작은도서관</div><div>02-2116-2495</div><div>평일 : 10:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.45898011, 126.9061848)
			    },
			    {
			        content: '<div>와서작은도서관</div><div>02-859-2414</div><div>평일 : 14:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.46494502, 126.8940183)
			    },
			    {
			        content: '<div>트리니티작은도서관</div><div>02-802-5390</div><div>평일 : 09:00~18:00 주말 : 토:09:00~18:00 일:09:00~16:00</div>', 
			        latlng: new kakao.maps.LatLng(37.45717241, 126.9002906)
			    },
			    {
			        content: '<div>해오름작은도서관</div><div>02-2104-5569</div><div>평일 : 10:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56665973, 127.1384372)
			    },
			    //노원구
			    {
			        content: '<div>노원정보도서관</div><div>02-950-0050</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.66109973, 127.0650094)
			    },
			    {
			        content: '<div>불암도서관</div><div>02-935-0721</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.64528936, 127.0825433)
			    },
			    {
			        content: '<div>원더풀도서관</div><div>02-997-7004</div><div>평일 : 12:00~18:00 주말 : 토:12:00~18:00 일:09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.62954507, 127.0541685)
			    },
			    {
			        content: '<div>중계사랑작은도서관</div><div>02-2116-2717</div><div>평일 : 09:00~18:00 주말 : 10:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6587571, 127.0779712)
			    },
			    {
			        content: '<div>책누리작은도서관</div><div>02-2116-2621</div><div>평일 : 09:00~18:00 주말 : 10:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6477949, 127.0802812)
			    },
			    //도봉구
			    {
			        content: '<div>둘리도서관</div><div>02-990-2200</div><div>평일 : 10:00~17:30 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.65243153, 127.0276397)
			    },
			    {
			        content: '<div>무수골도서관</div><div>02-3492-0078</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.68298934, 127.042872)
			    },
			    {
			        content: '<div>쌍문채움도서관</div><div>02-998-0910</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6441856, 127.0294746)
			    },
			    {
			        content: '<div>참솔도서관</div><div>02-932-4733</div><div>평일 : 11:00~20:00 주말 : 10:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.66666598, 127.0321721)
			    },
			    {
			        content: '<div>학마을도서관</div><div>02-955-0655</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6621577, 127.0278303)
			    },
			    //동대문구
			    {
			        content: '<div>꿈마루도서관</div><div>070-7457-1190</div><div>평일 : 10:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.59231127, 127.0570265)
			    },
			    {
			        content: '<div>동대문책마당</div><div>02-2127-4116</div><div>평일 : 09:00~21:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5743917161622, 127.039896580148)
			    },
			    {
			        content: '<div>포도나무작은도서관</div><div>02-2213-8929</div><div>평일 : 11:00~19:00 주말 : 11:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5755851, 127.0691713)
			    },
			    {
			        content: '<div>회기마루작은도서관</div><div>02-960-6186</div><div>평일 : 10:30~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.594202, 127.0482889)
			    },
			    {
			        content: '<div>용신동작은도서관</div><div>02-2127-6023</div><div>평일 : 09:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.57579709, 127.037274)
			    },
			    //동작구
			    {
			        content: '<div>동작샘터도서관</div><div>02-533-6750</div><div>평일 : 09:00~18:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.48837378, 126.9775871)
			    },
			    {
			        content: '<div>사당솔밭도서관</div><div>02-585-8411-2</div><div>평일 : 09:00~22:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.48408051, 126.9673502)
			    },
			    {
			        content: '<div>생명나무도서관</div><div>02-815-3615</div><div>평일 : 10:30~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50946978, 126.9516771)
			    },
			    {
			        content: '<div>약수도서관</div><div>02-823-1907</div><div>평일 : 09:00~18:00 주말 : 09:00?17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4978869, 126.9474565)
			    },
			    {
			        content: '<div>푸른도서관</div><div>409-9280</div><div>평일 : 10:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.50108096, 126.9336234)
			    },
			    //마포구
			    {
			        content: '<div>꿈빛도서관</div><div>02-335-0911</div><div>평일 : 10:00~17:00 주말 : 토 10:00~17:00 일요일 12:00~14:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55450757, 126.9010278)
			    },
			    {
			        content: '<div>도란도란Books</div><div>02-716-0690</div><div>평일 : 11:00~16:00 주말 : 11:00~14:00</div>', 
			        latlng: new kakao.maps.LatLng(37.54101496, 126.9512162)
			    },
			    {
			        content: '<div>마포중앙도서관</div><div>02-3153-5800</div><div>평일 : 09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56379606, 126.9082023)
			    },
			    {
			        content: '<div>상암동문고</div><div>02-3153-6966</div><div>평일 : 09:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.57833716, 126.8946747)
			    },
			    {
			        content: '<div>신수동문고</div><div>02-3153-6680</div><div>평일 : 09:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.56828229, 126.9027732)
			    },
			    //서대문구
			    {
			        content: '<div>남가좌삼성래미안아파트푸른북카페</div><div>02-376-2743</div><div>평일 : 11:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.57806418, 126.9160828)
			    },
			    {
			        content: '<div>새솔도서실</div><div>02-3277-3190</div><div>평일 : 09:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.5638977, 126.9506818)
			    },
			    {
			        content: '<div>세빛도서관</div><div>070-5001-4656</div><div>평일 : (화~금):13:00~18:00 주말 : 토:10:00~16:00 일:10:00~15:00</div>', 
			        latlng: new kakao.maps.LatLng(37.58640372, 126.9454939)
			    },
			    {
			        content: '<div>아낌없이주는나무</div><div>02-312-5907</div><div>평일토 : 10:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5679265226906, 126.96114676543)
			    },
			    {
			        content: '<div>천연뜨란채문고</div><div>02-365-2800</div><div>평일 : 09:00~18:00 주말 : 09:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56623615, 126.9588387)
			    },
			    //서초구
			    {
			        content: '<div>국립중앙도서관</div><div>02-535-4142</div><div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.49742252, 127.0032279)
			    },
			    {
			        content: '<div>내곡도서관</div><div>02-3461-3007</div><div>평일 : 09:00~22:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.45200429, 127.054445)
			    },
			    {
			        content: '<div>너나울도서관</div><div>070-7014-0773</div><div>평일 : 14:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.45657632, 127.0168318)
			    },
			    {
			        content: '<div>반포도서관</div><div>02-520-8700</div><div>평일 : 09:00~22:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50248627, 127.0125127)
			    },
			    {
			        content: '<div>방배도서관</div><div>02-3471-3993</div><div>평일 : 09:00~21:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4784386, 126.9999959)
			    },
			    //성동구
			    {
			        content: '<div>꿈샘작은도서관</div><div>02-2299-0817</div><div>평일 : 10:00~18:00 주말 : 10:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.54093943, 127.0147456)
			    },
			    {
			        content: '<div>무지개도서관</div><div>02-2286-6025</div><div>평일 : 09:00~21:00 주말 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56342271, 127.0369648)
			    },
			    {
			        content: '<div>무학도서관</div><div>02-2139-0077</div><div>일요일 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55908246, 127.0320544)
			    },
			    {
			        content: '<div>성동구립도서관</div><div>02-2204-6420</div><div>평일 : 09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55918517, 127.0349643)
			    },
			    {
			        content: '<div>성락도서관</div><div>070-7491-5105</div><div>평일 : 13:00~17:00 주말 : 10:00~16:00</div>', 
			        latlng: new kakao.maps.LatLng(37.54654382, 127.0539607)
			    },
			    //성북구
			    {
			        content: '<div>달빛마루도서관</div><div>02-911-0993</div><div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.60505817, 127.0309905)
			    },
			    {
			        content: '<div>뒤죽박죽도서관</div><div>02-942-7766</div><div>평일 : 11:00~20:00 주말 : 12:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.60510538, 127.0156114)
			    },
			    {
			        content: '<div>성북길빛도서관</div><div>02-6949-0031</div><div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6099592726924, 127.026441403711)
			    },
			    {
			        content: '<div>서경로꿈마루도서관</div><div>02-6925-0300</div><div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.61146166, 127.0138629)
			    },
			    {
			        content: '<div>세레니티문고</div><div>02-923-9324</div><div>평일 : 17:00~21:00 주말 : 16:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.59817032, 127.0297551)
			    },
			    //송파구
			    {
			        content: '<div>돌마리도서관</div><div>02-414-7007</div><div>평일 : 09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50356529, 127.1036861)
			    },
			    {
			        content: '<div>쁘레네작은도서관별찌</div><div>02-431-7505</div><div>평일 : 11:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.49593438, 127.1359566)
			    },
			    {
			        content: '<div>새비전도서관</div><div>070-8952-8028</div><div>평일 : 14:00~19:00 주말 : 14:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4977517425275, 127.14148893103)
			    },
			    {
			        content: '<div>송파글마루도서관</div><div>02-449-8855</div><div>평일 : 09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4808353, 127.1304785)
			    },
			    {
			        content: '<div>송파위례도서관</div><div>02-402-3003</div><div>평일 : 화~금:09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.48116507, 127.1439372)
			    },
			    //양천구
			    {
			        content: '<div>갈산도서관</div><div>02-2649-2732</div><div>평일 : 09:00~22:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50898517, 126.8671394)
			    },
			    {
			        content: '<div>개울건강도서관</div><div>02-2696-8910</div><div>평일 : 09:00~22:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.52597157, 126.8565997)
			    },
			    {
			        content: '<div>그루터기</div><div>02-2606-0289</div><div>월수금 : 14:00~18:00 화목:11:00~17:00 토 : 11:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5399609, 126.8249719)
			    },
			    {
			        content: '<div>미감도서관</div><div></div>02-2652-5481<div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5389681521143, 126.865489157491)
			    },
			    {
			        content: '<div>꿈꾸는도서관</div><div>070-4755-3705</div><div>평일 : 10:00~17:00 주말 : 10:00~13:00</div>', 
			        latlng: new kakao.maps.LatLng(37.57267143, 127.0467838)
			    },
			    //영등포구
			    {
			        content: '<div>꿈이있는도서관</div><div>02-2667-1114</div><div>평일 : 10:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.55372781, 126.8299298)
			    },
			    {
			        content: '<div>당성책세상 우리세상 문고</div><div>02-2675-9191</div><div>평일 : 10:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.5225023, 126.8965347)
			    },
			    {
			        content: '<div>대림도서관</div><div>02-828-3700</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.50431669, 126.8960768)
			    },
			    {
			        content: '<div>두날개작은도서관</div><div>02-824-3796</div><div>평일 : 13:00~21:00 주말 : 10:00~16:00</div>', 
			        latlng: new kakao.maps.LatLng(37.49943584, 126.8962844)
			    },
			    {
			        content: '<div>선유도서관</div><div>02-2163-0800</div><div>평일 : 09:00~20:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.53333762, 126.8929418)
			    },
			    //용산구
			    {
			        content: '<div>서울비전문고</div><div>02-703-9641</div><div>화~금 : 10:00~18:00 토 : 12:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.53807408, 126.9639003)
			    },
			    {
			        content: '<div>오렌지나무 작은도서관</div><div>02-2199-8754</div><div>평일 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.53780199, 126.9621139)
			    },
			    {
			        content: '<div>이태원글빛 작은도서관</div><div>02-795-9146</div><div>화~금 : 13:00~17:00 토 : 11:00~17:00 일 : 10:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5345722, 126.9880217)
			    },
			    {
			        content: '<div>청파도서관</div><div>02-714-3931</div><div>평일 : 09:00~21:00 주말 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55278347, 126.9675304)
			    },
			    {
			        content: '<div>해다올 작은도서관</div><div>02-2199-8739</div><div>평일 : 09:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5460485, 126.9833687)
			    },
			    //은평구
			    {
			        content: '<div>구산동도서관마을</div><div>02-357-0100</div><div>평일 : 09:00~22:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.60950609, 126.9130867)
			    },
			    {
			        content: '<div>꿈샘도서관</div><div>02-376-9191</div><div>평일 : 10:00~17:00 주말 : 10:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.59292031, 126.9208276)
			    },
			    {
			        content: '<div>두드림도서관</div><div>02-358-9559</div><div>평일 : 11:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.64269952, 126.9179894)
			    },
			    {
			        content: '<div>비전뜰도서관</div><div>02-388-4741</div><div>평일 : 13:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6257018644983, 126.920798289135)
			    },
			    {
			        content: '<div>솔빛도서관</div><div>02-358-8146</div><div>평일 : 09:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.6387763, 126.9324467)
			    },
			    //종로구
			    {
			        content: '<div>국립현대미술관서울관디지털도서관</div><div>02-3701-9563</div><div>평일 : 10:00~17:30 주말 : 10:00~17:30</div>', 
			        latlng: new kakao.maps.LatLng(37.57875198, 126.9813307)
			    },
			    {
			        content: '<div>도담도담한옥도서관</div><div>02-928-1133</div><div>평일 : 10:00~19:00 주말 : 10:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.57941984, 127.0169835)
			    },
			    {
			        content: '<div>무악다솜방</div><div>02-2148-5164</div><div>평일 : 10:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.57693373, 126.9601425)
			    },
			    {
			        content: '<div>삼청공원숲속도서관</div><div>02-734-3900</div><div>평일 : 10:00~18:00 주말 : 10:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.58797913, 126.984087)
			    },
			    {
			        content: '<div>청파도서관</div><div>02-765-1511</div><div>화목금 : 12:30~17:30 수 : 12:30~19:30 토 : 09:00~14:00</div>', 
			        latlng: new kakao.maps.LatLng(37.55278347, 126.9675304)
			    },
			    //중구
			    {
			        content: '<div>어울림도서관</div><div>02-2230-2901</div><div>평일 : 09:00~22:00 주말 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56171915, 127.0189284)
			    },
			    {
			        content: '<div>청구동작은도서관</div><div>02-2234-8771</div><div>평일 : 10:00~21:00 주말 : 10:00~14:00(토)</div>', 
			        latlng: new kakao.maps.LatLng(37.55631251, 127.0159763)
			    },
			    {
			        content: '<div>한국학생공공도서관대학문화원(구한국학생도서관)</div><div>02-2275-0753</div><div>평일 : 07:00~21:00 주말 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.56070426, 127.0021513)
			    },
			    {
			        content: '<div>황학동작은도서관</div><div>02-2233-3253</div><div>평일 : 10:00~21:00 주말 : 10:00~14:00(토)</div>', 
			        latlng: new kakao.maps.LatLng(37.57041957, 127.0192421)
			    },
			    {
			        content: '<div>회현동작은도서관</div><div>02-3396-6558</div><div>평일 : 10:00~17:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.55726024, 126.9789712)
			    },
			    //중랑구
			    {
			        content: '<div>늘품작은도서관</div><div>02-973-1572</div><div>평일 : 10:00~17:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6192357, 127.0812132)
			    },
			    {
			        content: '<div>동일 작은도서관</div><div>02-3423-0691</div><div>평일 : 화~금 10:00~18:00 주말 : 토 10:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6108237, 127.0923087)
			    },
			    {
			        content: '<div>새소망도서관</div><div>070-7583-0694</div><div>평일 : 11:00~16:30 주말 : 토:11:00~16:30</div>', 
			        latlng: new kakao.maps.LatLng(37.57853081, 127.0943534)
			    },
			    {
			        content: '<div>세방도서관</div><div>02-6238-9779</div><div>평일 : 09:00~18:00 주말 : 휴관일</div>', 
			        latlng: new kakao.maps.LatLng(37.61532755, 127.0834651)
			    },
			    {
			        content: '<div>영지도서관</div><div>02-977-0312</div><div>평일 : 09:00~18:00 주말 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6126262853895, 127.078520853936)
			    },
			    {
			        content: '<div>현재위치</div>',
			        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
			    }
			];

			for (var i = 0; i < positions.length; i ++) {
			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions[i].latlng // 마커의 위치
			    });

			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			        content: positions[i].content // 인포윈도우에 표시할 내용
			    });

			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
			}

			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}

			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}
				
			}
			
			function store(){
				new daum.Postcode({oncomplete : function(data) {
					var addr = data.address; // 최종 주소 변수

					// 주소 정보를 해당 필드에 넣는다.
					document.getElementById("sample5_address").value = addr;
					// 주소로 상세 정보를 검색
					geocoder.addressSearch(data.address,function(results, status) {
					// 정상적으로 검색이 완료됐으면
					if (status === daum.maps.services.Status.OK) {

					var result = results[0]; //첫번째 결과의 값을 활용

					// 해당 주소에 대한 좌표를 받아서
					var coords = new daum.maps.LatLng(result.y, result.x);
					// 지도를 보여준다.
					mapContainer.style.display = "block";
					map.relayout();
					// 지도 중심을 변경한다.
					map.setCenter(coords);
					// 마커를 결과값으로 받은 위치로 옮긴다.
					marker.setPosition(coords)
					}
					});
				}
			}).open();
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
			    mapOption = { 
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			 
			// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
			var positions = [
				//강남구
			    {
			        content: '<div>교보문고 강남점</div><div>1544-1900</div><div>평일 주말 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5037059, 127.0219459)
			    },
			    {
			        content: '<div>알라딘 중고서점 강남점</div><div>1544-2514</div><div>평일 주말 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5037837, 127.0216827)
			    },
			    {
			        content: '<div>영풍문고 강남점</div><div>02-569-9070</div><div>평일 주말 : 09:00~23:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4991751, 127.0231453)
			    },
			    {
			        content: '<div>최인아책방</div><div>02-2088-7330</div><div>평일 주말: 11:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5024606, 127.0374361)
			    },
			    {
			        content: '<div>도시서점</div><div>097-4001-8004</div><div>평일 : 11:30~20:30</div>', 
			        latlng: new kakao.maps.LatLng(37.4905089, 127.0133332)
			    },
			    //강동구
			    {
			        content: '<div>강동도서할인매장(명일동지점)</div><div>02-427-7333</div><div>평일 : 10:00~21:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5387853, 127.1287816)
			    },
			    {
			        content: '<div>예림문고암사점</div><div>02-477-8600</div><div>평일 : 12:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5513695,127.1265776)
			    },
			    {
			        content: '<div>교보문고 천호점</div><div>02-472-3501</div><div>평일 : 10:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.540481,127.1227721)
			    },
			    {
			        content: '<div>동북문고</div><div>02-477-8200</div><div>평일 : 11:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5261204, 127.1329659)
			    },
			    {
			        content: '<div>홀로서기</div><div>02-812-6922</div><div>평일 : 10:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5381378, 127.1245967)
			    },
			    //강북구
			    {
			        content: '<div>교보문고 수유 바로드림센터</div><div>02-995-9961</div><div>평일 : 10:30~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.638989, 127.0062474)
			    },
			    {
			        content: '<div>알라딘 중고서점 수유점</div><div>1544-2514</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.638243,127.0141866)
			    },
			    {
			        content: '<div>창문서점</div><div>02-980-0276</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.608683, 127.0196201)
			    },
			    {
			        content: '<div>혜림문고</div><div>02-983-1280</div><div>평일 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.62047806, 127.0124026)
			    },
			    {
			        content: '<div>SK문고</div><div>02-989-9173</div><div>평일 : 13:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.62946981, 127.0197854)
			    },
			    //강서구
			    {
			        content: '<div>알라딘 중고서점 강서 홈플러스점</div><div>1544-2514</div><div>평일 : 10:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5434791, 126.809393)
			    },
			    {
			        content: '<div>YES24 중고서점 강서NC점</div><div>1566-4295</div><div>평일 : 10:30~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5478099, 126.819225)
			    },
			    {
			        content: '<div>예림문고</div><div>02-2644-9182</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5253831, 126.8226238)
			    },
			    {
			        content: '<div>영일서점</div><div>02-2651-1893</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5467513, 126.8456865)
			    },
			    {
			        content: '<div>다시서점</div><div>070-4383-4869</div><div>평일 : 10:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5461738, 126.8203175)
			    },
			    //관악구
			    {
			        content: '<div>교보문고 서울대점</div><div>02-880-8581</div><div>평일 : 08:30~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4600833, 126.8862768)
			    },
			    {
			        content: '<div>영풍문고 신림점</div><div>02-889-9675</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4839432, 126.9279905)
			    },
			    {
			        content: '<div>대민문고</div><div>02-875-5300</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4835723, 126.8851307)
			    },
			    {
			        content: '<div>알라딘 중고서점 신림점</div><div>1544-2514</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4824091,126.9280492)
			    },
			    {
			        content: '<div>흙서점</div><div>02-884-8454</div><div>평일 : 12:00~23:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4773536, 126.8920218)
			    },
			    //광진구
			    {
			        content: '<div>공손서점</div><div>1544-2514</div><div>평일 : 10:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.54163,127.1003738)
			    },
			    {
			        content: '<div>알라딘 중고서점 건대점</div><div>1544-2514</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.540959, 127.0686623)
			    },
			    {
			        content: '<div>초원서점</div><div>02-453-4570</div><div>평일 : 09:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5299963, 127.0830412)
			    },
			    {
			        content: '<div>반디앤루니스 롯데스타시티점</div><div>02-2218-3050</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.538651, 127.0686892)
			    },
			    {
			        content: '<div>유일서점</div><div>02-456-3360</div><div>평일 : 09:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5481634, 127.0668716)
			    },
			    //구로구
			    {
			        content: '<div>교보문고 디큐브시티 바로드림센터</div><div>1544-1900</div><div>평일 : 11:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5084321, 126.8865445)
			    },
			    {
			        content: '<div>나나서점</div><div>02-2684-9107</div><div>평일 : 10:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.493319, 126.8322413)
			    },
			    {
			        content: '<div>북스리브로구로점</div><div>070-4726-2825</div><div>평일 : 10:30~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5008467,126.8741982)
			    },
			    {
			        content: '<div>한솔문고</div><div>02-2611-0455</div><div>평일 : 09:00~23:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5048509, 126.8468524)
			    },
			    {
			        content: '<div>열린문고</div><div>02-2619-9724</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5033738,126.8552277)
			    },
			    
			    //금천구
			    {
			        content: '<div>영풍문고 가산마리오점</div><div>02-2067-3820</div><div>평일 : 10:30~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4750371, 126.8564289)
			    },
			    {
			        content: '<div>드래곤책대여점</div><div>02-084-7712</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4781007, 126.9006082)
			    },
			    {
			        content: '<div>우리서적</div><div>02-855-1722</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4727554, 126.897909)
			    },
			    {
			        content: '<div>유수하서적</div><div>02-385-3340</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4678646, 126.8886669)
			    },
			    {
			        content: '<div>올오어낫싱</div><div>02-867-7595</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4610943, 126.8945437)
			    },
			    
			    //노원구
			    {
			        content: '<div>노원문고 본점</div>02-951-0633<div></div><div>평일 : 10:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6525101, 127.0593506)
			    },
			    {
			        content: '<div>알라딘 중고서점 노원역점</div><div>1544-2514</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6547199, 127.0577981)
			    },
			    {
			        content: '<div>가람문고</div><div>02-933-0066</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6563587, 127.0600201)
			    },
			    {
			        content: '<div>노원문고 제5매장</div><div>02-932-3822</div><div>평일 : 10:30~22:30</div>', 
			        latlng: new kakao.maps.LatLng(37.6561445, 127.0593003)
			    },
			    {
			        content: '<div>노원문고 제2매장</div><div>02-932-9998</div><div>평일 : 10:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6537201, 127.0589369)
			    },
			    //도봉구
			   	{
			        content: '<div>현대문고</div><div>02-908-1843</div><div>평일 : 10:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6621194, 127.031205)
			    },
			    {
			        content: '<div>책여행</div><div>02-990-8664</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6529305, 127.0430205)
			    },
			    {
			        content: '<div>예일문고</div><div>02-995-5206</div><div>평일 : 10:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.652363, 127.0478489)
			    },
			    {
			        content: '<div>동아서점</div><div>02-904-1360</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6402463,127.0371889)
			    },
			    {
			        content: '<div>한미서점</div><div>02-994-3535</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6486091, 127.0321619)
			    },
			    //동대문구
			    {
			        content: '<div>교보문고 청량리바로드림센터</div><div>1544-1900</div><div>평일 : 10:30~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5807015, 127.0454652)
			    },
			    {
			        content: '<div>전농서적</div><div>02-2245-2248</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5779237, 127.0560227)
			    },
			    {
			        content: '<div>경희문고</div><div>02-957-7799</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5931286, 127.0502339)
			    },
			    {
			        content: '<div>장안현대문고</div><div>02-3394-5330</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5705083, 127.0714381)
			    },
			    {
			        content: '<div>숭문서점</div><div>02-3273-9724</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5831575, 127.0711017)
			    },
			    //동작구
			    {
			        content: '<div>대륙서점</div><div>02-821-8878</div><div>평일 : 10:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4989025, 126.9310914)
			    },
			    {
			        content: '<div>제일서점</div><div>02-822-3191</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5123805, 126.9415776)
			    },
			    {
			        content: '<div>알라딘 중고서점 이수역점</div><div>1544-2514</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4855233, 126.9798136)
			    },
			    {
			        content: '<div>학림서점</div><div>02-815-5482</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5124155, 126.9491171)
			    },
			    {
			        content: '<div>홍문관서적</div><div>1588-1869</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5125043, 126.9417756)
			    },
			    //마포구
			    {
			        content: '<div>교보문고 합정점</div><div>1544-1900</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5499543, 126.9099331)
			    },
			    {
			        content: '<div>영풍문고 홍대점</div><div>02-2250-7733</div><div>평일 : 09:00~22:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5569388, 126.9211797)
			    },
			    {
			        content: '<div>어쩌다 책방</div><div>070-5121-5629</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.554313, 126.9047313)
			    },
			    {
			        content: '<div>땡스북스</div><div>02-325-0321</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.548809, 126.9154633)
			    },
			    {
			        content: '<div>서점, 리스본</div><div>070-4233-3905</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5641381, 126.9205259)
			    },
			    //서대문구
			    {
			        content: '<div>신촌역 홍익문고</div><div>02-392-2020</div><div>평일 : 09:00~21:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5557298, 126.9348685)
			    },
			    {
			        content: '<div>홍제문고</div><div>02-3219-5552</div><div>평일 : 09:00~23:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5889293, 126.9420887)
			    },
			    {
			        content: '<div>교보문고 이화여대점</div><div>02-393-1641</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.561396, 126.9445896)
			    },
			    {
			        content: '<div>밤의 서점</div><div></div><div>평일 : 17:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5666531, 126.921875)
			    },
			    {
			        content: '<div>유어마인드</div><div>070-8821-8990</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.568358, 126.9281067)
			    },
			    {
			        content: '<div>알라딘 중고서점 신촌점</div><div>1544-2514</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5575246, 126.9345518)
			    },
			    //서초구
			    {
			        content: '<div>서초서점</div><div>02-583-4389</div><div>평일 : 09:00~23:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4833503, 127.0063383)
			    },
			    {
			        content: '<div>교보문고 강남점</div><div>1544-1900</div><div>평일 : 09:30~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5037059, 127.0219459)
			    },
			    {
			        content: '<div>우면 한솔서점</div><div>02-529-5949</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4643771, 127.023595)
			    },
			    {
			        content: '<div>책방오늘,</div><div>02-529-5055</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4770584, 127.0350532)
			    },
			    {
			        content: '<div>진영문고</div><div>02-3471-1997</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4801347, 126.9966904)
			    },
			    //성동구
			    {
			        content: '<div>더북스 한양대점</div><div>02-6454-6205</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5570821, 127.0379112)
			    },
			    {
			        content: '<div>영풍문고 왕십리역점</div><div>02-2200-1600</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5605278, 127.0365537)
			    },
			    {
			        content: '<div>프루스트의 서재</div><div>010-8988-2682</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5512277, 127.0197588)
			    },
			    {
			        content: '<div>피스북스(Peacebooks)</div><div>070-4352-2016</div><div>평일 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.543518, 127.012555)
			    },
			    {
			        content: '<div>카모메그림책방</div><div>010-6510-5065</div><div>평일 : 09:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5533852, 127.0183996)
			    },
			    //성북구
			    {
			        content: '<div>글밭서점</div><div>02-911-0958</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6020027, 127.0166935)
			    },
			    {
			        content: '<div>길음문고</div><div>02-917-8333</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6043435, 127.0216776)
			    },
			    {
			        content: '<div>성신북스</div><div>02-3673-0877</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5933842, 127.0150686)
			    },
			    {
			        content: '<div>대원서점</div><div>02-914-0660</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6108333, 127.006978)
			    },
			    {
			        content: '<div>지식을 담다</div><div>02-927-8044</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5853851, 127.0282726)
			    },
			    //송파구
			    {
			        content: '<div>송파문고</div><div>02-416-4837</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.4996286, 127.1024648)
			    },
			    {
			        content: '<div>서울책보고</div><div>02-6951-4979</div><div>평일 : 09:00~20:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5219276, 127.1015719)
			    },
			    {
			        content: '<div>잠실서적</div><div>02-420-4034</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5035172, 127.1111305)
			    },
			    {
			        content: '<div>개롱서점</div><div>02-403-1603</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.497093, 127.1337063)
			    },
			    {
			        content: '<div>교보문고 가든파이브바로드림센터</div><div>02-2157-3401</div><div>평일 : 09:00~20:30</div>', 
			        latlng: new kakao.maps.LatLng(37.4772225, 127.1225181)
			    },
			    //양천구
			    {
			        content: '<div>목동문고</div><div>02-2643-3070</div><div>평일 : 09:00~22:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5163019, 126.857312)
			    },
			    {
			        content: '<div>진학서점</div><div>02-2692-0481</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5242679, 126.8623068)
			    },
			    {
			        content: '<div>교보문고 목동점</div><div>1544-1900</div><div>평일 : 09:30~21:30</div>', 
			        latlng: new kakao.maps.LatLng(37.528232,126.8727923)
			    },
			    {
			        content: '<div>글빛문고</div><div>02-2651-8360</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5360922, 126.8682922)
			    },
			    {
			        content: '<div>에덴서점</div><div>02-2605-8598</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5256603, 126.8577547)
			    },
			    //영등포구
			    {
			        content: '<div>교보문고 영등포점</div><div>02-2678-3501</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.517007, 126.9019532)
			    },
			    {
			        content: '<div>알라딘 중고서점 영등포역 타임스퀘어점</div><div>1544-2514</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5173177, 126.9040353)
			    },
			    {
			        content: '<div>영풍문고 여의도IFC몰점</div><div>02-6137-5254</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5259791, 126.9236386)
			    },
			    {
			        content: '<div>대원문고</div><div>02-2671-2375</div><div>평일 : 09:00~21:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5332599, 126.8984597)
			    },
			    {
			        content: '<div>반디앤루니스</div><div>02-761-6222</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5213156, 126.9268549)
			    },
			    //용산구
			    {
			        content: '<div>뿌리서점</div><div>02-797-4459</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5265763, 126.9574685)
			    },
			    {
			        content: '<div>영풍문고 용산아이파크몰점</div><div>02-2012-0828</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5288539, 126.961856)
			    },
			    {
			        content: '<div>별책부록</div><div>070-5103-0341</div><div>평일 : 09:00~19:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5448778, 126.9847839)
			    },
			    {
			        content: '<div>스토리지북앤필름</div><div>070-5103-9975</div><div>평일 : 09:00~19:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5446896, 126.9809209)
			    },
			    {
			        content: '<div>스틸북스 Still Books</div><div>02-749-5005</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5339562, 126.9999005)
			    },
			    //은평구
			    {
			        content: '<div>(주)불광문고</div><div>02-383-4236</div><div>평일 : 09:00~21:30</div>', 
			        latlng: new kakao.maps.LatLng(37.6117826, 126.9271454)
			    },
			    {
			        content: '<div>연신내문고(주)</div><div>02-352-7600</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6198092, 126.9179516)
			    },
			    {
			        content: '<div>알라딘 중고서점 연신내점</div><div>1544-2514</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6175342, 126.9175773)
			    },
			    {
			        content: '<div>교보문고 은평롯데몰</div><div></div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6370477, 126.9161375)
			    },
			    {
			        content: '<div>광명서점</div><div>02-303-0524</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5828659, 126.8924745)
			    },
			    //종로구
			    {
			        content: '<div>종로서적</div><div>02-739-2331</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5705902, 126.9814223)
			    },
			    {
			        content: '<div>부쿠서점</div><div>02-6954-2907</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5746274, 126.9815462)
			    },
			    {
			        content: '<div>영풍문고 종로본점</div><div>02-399-5600</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5697911, 126.9801274)
			    },
			    {
			        content: '<div>교보문고 광화문점</div><div>02-397-3400</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5709683, 126.9755758)
			    },
			    {
			        content: '<div>역사책방 HISTORY BOOK</div><div>02-733-8348</div><div>평일 : 09:00~21:30</div>', 
			        latlng: new kakao.maps.LatLng(37.5792154, 126.9706336)
			    },
			    //중구
			    {
			        content: '<div>교보문고 동대문 바로드림센터</div><div>02-2283-2131</div><div>평일 : 09:00~21:00</div>', 
			        latlng: new kakao.maps.LatLng(37.568517, 127.0056291)
			    },
			    {
			        content: '<div>노말에이</div><div>070-4681-5858</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5645717, 126.9869103)
			    },
			    {
			        content: '<div>스페인책방</div><div>010-9460-7694</div><div>평일 : 09:00~20:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5604866, 126.9928541)
			    },
			    {
			        content: '<div>그래서 책방</div><div>02-2268-3305</div><div>평일 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5686881, 126.9986024)
			    },
			    {
			        content: '<div>정은도서</div><div>02-2285-1784</div><div>평일 : 09:00~18:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5693924, 127.0066037)
			    },
			    //중랑구
			    {
			        content: '<div>북스리브로 상봉점</div><div>070-4726-7775</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5972658, 127.0900044)
			    },
			    {
			        content: '<div>신공손서점</div><div>02-3421-1652</div><div>평일 : 09:00~22:30</div>', 
			        latlng: new kakao.maps.LatLng(37.6064104, 127.0924549)
			    },
			    {
			        content: '<div>열린문고</div><div>02--977-9313</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6118981, 127.0758666)
			    },
			    {
			        content: '<div>공일서점</div><div>02-972-6407</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.6192424, 127.0756298)
			    },
			    {
			        content: '<div>중고책키다리서점</div><div>02-6412-2248</div><div>평일 : 09:00~22:00</div>', 
			        latlng: new kakao.maps.LatLng(37.5812082, 127.0533767)
			    },
			    {
			        content: '<div>현재위치</div>', 
			        latlng: new kakao.maps.LatLng()
			    }
			];

			for (var i = 0; i < positions.length; i ++) {
			    // 마커를 생성합니다
			    var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
			    var imageSize = new kakao.maps.Size(20, 30);
			    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			    var marker = new kakao.maps.Marker({
			        map: map, // 마커를 표시할 지도
			        position: positions[i].latlng, // 마커의 위치
			        image : markerImage
			    });

			    // 마커에 표시할 인포윈도우를 생성합니다 
			    var infowindow = new kakao.maps.InfoWindow({
			        content: positions[i].content // 인포윈도우에 표시할 내용
			    });

			    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
			    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
			    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
			}

			// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
			function makeOverListener(map, marker, infowindow) {
			    return function() {
			        infowindow.open(map, marker);
			    };
			}

			// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
			function makeOutListener(infowindow) {
			    return function() {
			        infowindow.close();
			    };
			}
				
			}