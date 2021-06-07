$.getJSON("json/allBookList.json", function(data){
    			console.log(data);
    			
    			for(var i = 0; i < 20; i++){
    				$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
    			}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
    			
    			$(".page1").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				for(var i = 0; i < 20; i++){
    					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
											   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
											   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								 			   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								 			   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								 			   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
											   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
											   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
											   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								 			   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
											   "</form>");
    				}
        			for(var i = 0; i < 20; i++){
        				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
    			}
    			});
    			
    			$(".page2").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 20; i < 40; i++){
    					$(".index" + (i - 20)).append("<form action='detailpopup.do;' method='POST'>" + 
								   				      "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
												      "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   					  "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   					  "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								  					  "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
													  "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   					  "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								                      "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   					  "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   					  "</form>");
    				}
        			for(var i = 20; i < 40; i++){
        				$(".star" + (i-20)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page3").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 40; i < 60; i++){
    					$(".index" + (i - 40)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 40; i < 60; i++){
        				$(".star" + (i-40)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page4").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 60; i < 80; i++){
    					$(".index" + (i - 60)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 60; i < 80; i++){
        				$(".star" + (i-60)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page5").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 80; i < 100; i++){
    					$(".index" + (i - 80)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 80; i < 100; i++){
        				$(".star" + (i-80)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page6").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 100; i < 120; i++){
    					$(".index" + (i - 100)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 100; i < 120; i++){
        				$(".star" + (i-100)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page7").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 120; i < 140; i++){
    					$(".index" + (i - 120)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 120; i < 140; i++){
        				$(".star" + (i-120)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page8").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 140; i < 160; i++){
    					$(".index" + (i - 140)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 140; i < 160; i++){
        				$(".star" + (i-140)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page9").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 160; i < 180; i++){
    					$(".index" + (i - 160)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 160; i < 180; i++){
        				$(".star" + (i-160)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page10").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 180; i < 200; i++){
    					$(".index" + (i - 180)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 180; i < 200; i++){
        				$(".star" + (i-180)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page11").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 200; i < 220; i++){
    					$(".index" + (i - 200)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 200; i < 220; i++){
        				$(".star" + (i-200)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page12").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 220; i < 240; i++){
    					$(".index" + (i - 220)).append("<form action='detailpopup.do;' method='POST>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 220; i < 240; i++){
        				$(".star" + (i-220)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page13").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 240; i < 260; i++){
    					$(".index" + (i - 240)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 240; i < 260; i++){
        				$(".star" + (i-240)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page14").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 260; i < 280; i++){
    					$(".index" + (i - 260)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 260; i < 280; i++){
        				$(".star" + (i-260)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page15").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 280; i < 300; i++){
    					$(".index" + (i - 280)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 280; i < 300; i++){
        				$(".star" + (i-280)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page16").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 300; i < 320; i++){
    					$(".index" + (i - 300)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 300; i < 320; i++){
        				$(".star" + (i-300)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page17").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 320; i < 340; i++){
    					$(".index" + (i - 320)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 320; i < 340; i++){
        				$(".star" + (i-320)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page18").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 340; i < 360; i++){
    					$(".index" + (i - 340)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 340; i < 360; i++){
        				$(".star" + (i-340)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page19").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 360; i < 380; i++){
    					$(".index" + (i - 360)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 360; i < 380; i++){
        				$(".star" + (i-360)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    			
    			$(".page20").click(function(){
    				$(".cover").remove();
    				$(".starr").remove();
    				$("form").remove();
    				for(var i = 380; i < 400; i++){
    					$(".index" + (i - 380)).append("<form action='detailpopup.do;' method='POST'>" + 
								   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
								   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
								   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
								   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
								   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
								   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
								   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
								   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
								   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
								   "</form>");
    				}
        			for(var i = 380; i < 400; i++){
        				$(".star" + (i-380)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
        			} 
    			});
    		});
    		
    		
$(document).ready(function(){
		$(".pre").hide();
		$(".after").hide();
		$("input[id=btnradio1]").attr("checked", "checked");
		$("input[id=btnradio4]").attr("checked", "checked");
	});
	function listAll(){
		$("input[id=btnradio1]").attr("checked", "checked");
		$("input[id=btnradio4]").attr("checked", "checked");
		$(".pagination").show();
		$.getJSON("json/allBookList.json", function(data){
			console.log(data);
			$(".cover").remove();
			$(".starr").remove();
			for(var i = 0; i < 20; i++){
				$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
			}
			for(var i = 0; i < 20; i++){
				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
			}
			
			$(".page1").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
			}
			});
			
			$(".page2").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 20; i < 40; i++){
					$(".index" + (i - 20)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 20; i < 40; i++){
    				$(".star" + (i-20)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page3").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 40; i < 60; i++){
					$(".index" + (i - 40)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 40; i < 60; i++){
    				$(".star" + (i-40)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page4").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 60; i < 80; i++){
					$(".index" + (i - 60)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 60; i < 80; i++){
    				$(".star" + (i-60)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page5").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 80; i < 100; i++){
					$(".index" + (i - 80)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 80; i < 100; i++){
    				$(".star" + (i-80)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page6").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 100; i < 120; i++){
					$(".index" + (i - 100)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 100; i < 120; i++){
    				$(".star" + (i-100)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page7").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 120; i < 140; i++){
					$(".index" + (i - 120)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 120; i < 140; i++){
    				$(".star" + (i-120)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page8").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 140; i < 160; i++){
					$(".index" + (i - 140)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 140; i < 160; i++){
    				$(".star" + (i-140)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page9").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 160; i < 180; i++){
					$(".index" + (i - 160)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 160; i < 180; i++){
    				$(".star" + (i-160)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page10").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 180; i < 200; i++){
					$(".index" + (i - 180)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 180; i < 200; i++){
    				$(".star" + (i-180)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page11").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 200; i < 220; i++){
					$(".index" + (i - 200)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 200; i < 220; i++){
    				$(".star" + (i-200)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page12").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 220; i < 240; i++){
					$(".index" + (i - 220)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 220; i < 240; i++){
    				$(".star" + (i-220)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page13").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 240; i < 260; i++){
					$(".index" + (i - 240)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 240; i < 260; i++){
    				$(".star" + (i-240)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page14").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 260; i < 280; i++){
					$(".index" + (i - 260)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 260; i < 280; i++){
    				$(".star" + (i-260)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page15").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 280; i < 300; i++){
					$(".index" + (i - 280)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 280; i < 300; i++){
    				$(".star" + (i-280)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page16").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 300; i < 320; i++){
					$(".index" + (i - 300)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 300; i < 320; i++){
    				$(".star" + (i-300)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page17").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 320; i < 340; i++){
					$(".index" + (i - 320)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 320; i < 340; i++){
    				$(".star" + (i-320)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page18").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 340; i < 360; i++){
					$(".index" + (i - 340)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 340; i < 360; i++){
    				$(".star" + (i-340)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page19").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 360; i < 380; i++){
					$(".index" + (i - 360)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 360; i < 380; i++){
    				$(".star" + (i-360)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
			
			$(".page20").click(function(){
				$(".cover").remove();
				$(".starr").remove();
				$("form").remove();
				for(var i = 380; i < 400; i++){
					$(".index" + (i - 380)).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 380; i < 400; i++){
    				$(".star" + (i-380)).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>");
    			} 
			});
		});
	}
	function detailmap() {
		window.open("detailmap.do", "test",
				"width=1000, height=420, left=350, top=200");
	}
	function next(){
		$(".after").show();
		$(".before").hide();
		$(".pre").show();
		$(".next").hide();
	}
	function pre(){
		$(".after").hide();
		$(".before").show();
		$(".pre").hide();
		$(".next").show();	
	}
	function best(){
		$("input[id=btnradio1]").attr("checked", false);
		$("input[id=btnradio2]").attr("checked", "checked");
		$("input[id=btnradio3]").attr("checked", false);
	}
	function newbook(){
		$("input[id=btnradio1]").attr("checked", false);
		$("input[id=btnradio2]").attr("checked", false);
		$("input[id=btnradio1]").attr("checked", "checked");
	}
	function check1(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}	
		$("input[id=btnradio5]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(':checked') == true){	
			$.getJSON("json/bestHobby.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newHobby.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check2(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio6]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestClassic.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newClassic.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check3(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio7]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestScience.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
    			}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newScience.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check4(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio8]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestComic.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newComic.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check5(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio9]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestSocial.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newSocial.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check6(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio10]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestNovel.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newNovel.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check7(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio11]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestEssay.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newEssay.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check8(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio12]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestHistory.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newHistory.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check9(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio13]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestHumanities.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newHumanities.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}
	function check10(){
		for(var i = 1; i <= 10; i++){
			$("input[id=btnradio" + i + "]").attr("checked", false)	
		}
		$("input[id=btnradio14]").attr("checked", "checked");
		
		if($("input:radio[id=btnradio2]").is(":checked") == true){
			$.getJSON("json/bestSelf.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}else if($("input:radio[id=btnradio3]").is(":checked") == true){
			$.getJSON("json/newSelf.json", function(data){
				console.log(data);
				$(".cover").remove();
				$(".starr").remove();
				$(".pagination").hide();
				$("form").remove();
				for(var i = 0; i < 20; i++){
					$(".index" + i).append("<form action='detailpopup.do;' method='POST'>" + 
    									   "<input type='hidden' name='title' value='" + data.item[i].title + "'>" + 
    									   "<input type='hidden' name='cover' value='" + data.item[i].cover + "'>" + 
    									   "<input type='hidden' name='author' value='" + data.item[i].author + "'>" +
    									   "<input type='hidden' name='publisher' value='" + data.item[i].publisher + "'>" +
    									   "<input type='hidden' name='description' value='" + data.item[i].description + "'>" +
    									   "<input type='hidden' name='price' value='" + data.item[i].priceStandard + "'>" +
    									   "<input type='hidden' name='categoryname' value='" + data.item[i].categoryName + "'>" +
    									   "<input type='hidden' name='starrate' value='" + data.item[i].customerReviewRank + "'>" +
										   "<input class='cover' name='submit' type='image' src='" + data.item[i].cover + "'>" +
    									   "</form>");
				}
    			for(var i = 0; i < 20; i++){
    				$(".star" + i).append("<img class='starr' src = 'resources/images/rating" + data.item[i].customerReviewRank + ".jpg'/>"); 			
				}
			});
		}
	}