

	$(document).ready(function(){
		for(var i = 15; i <= 29; i++){
			$(".n" + i).hide();
		}
	})
	function next(){
		for(var i = 0; i <= 14; i++){
			$(".n" + i).hide();
		}
		for(var i = 15; i <= 29; i++){
			$(".n" + i).show();
		}
	}
	function prev(){
		for(var i = 0; i <= 14; i++){
			$(".n" + i).show();
		}
		for(var i = 15; i <= 29; i++){
			$(".n" + i).hide();
		}
	}

	$(document).ready(
			function() {
				var ctx = document.getElementById('myChart');

				var config = {
					type : 'bar',
					data : {
						labels : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
								'8월', '9월', '10월', '11월', '12월' ],
						datasets : [ {
							label : '읽은 책',
							data : [],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)',
									'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)',
									'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {

						responsive : false,
						scales : {
							y : {
								beginAtZero : true
							}
						}
					}
				};

				var myChart = new Chart(ctx, config);

				$("#btnChart").click(function() {
					var param = {};
					param.selYear = $('#yyyy').val();

					$.ajax({
						url : "/book/chart/renew.do",
						data : param,
						//	dataType : "String",
						//	contentType : "application/json",
						type : "post",
						success : function(data) {
							//alert(data);
							var arr = data.split(",");
							config.data.datasets[0].data = arr;
							myChart.update();
						},
						error : function(data) {
							//	alert(data);
							alert("실패");
						}
					})

					//  		config.data.datasets[0].data = [1,20,5,11 ];
					// 			myChart.update();	
				});

			});