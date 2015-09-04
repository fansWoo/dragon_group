<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['header_bar']?>
<script src="app/js/smooth_scrollerator.js"></script>
<script>
$(function(){
	$(document).scroll(function(){
		var window_width = $(window).width();
		var scroll_top = $(document).scrollTop();	
		if(window_width > 450 && window_width <= 1400){

			if(scroll_top == 0){
				$('#content_one , #content_two , #content_three , #content_four ').removeClass('hover');

			}
	
			if(scroll_top >= 300 && scroll_top < 700){
				$('#content_one').addClass('hover');
				$('#content_two').removeClass('hover');
				$('#content_two .bus_box').css('opacity', '0');
				$('#content_two .bus_box').css('transform', 'translate( 300px , 410px)');
				
			}
			if(scroll_top >= 700 && scroll_top < 1500){
				$('#content_two').addClass('hover');
						
			}
			else if(scroll_top >= 3100 && scroll_top < 4500){
				$('#content_four').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 4500 && scroll_top < 5000 ){
				$('#content_two').removeClass('hover');
			   
			}
			
		}
		if(window_width >= 1400){
			
			if(scroll_top == 0){
				$('#content_one , #content_two , #content_three , #content_four ').removeClass('hover');

			}
	
			if(scroll_top >= 300 && scroll_top < 600){
				$('#content_one').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 600 && scroll_top < 2000){
				$('#content_two').addClass('hover');
				
			}
			else if(scroll_top >= 2000 && scroll_top < 3800){
				$('#content_three').addClass('hover');
				$('#content_two').removeClass('hover');
				
			}
			else if(scroll_top >= 3800 && scroll_top < 4800){
				$('#content_four').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 4800 && scroll_top < 8000 ){
				$('#content_two').removeClass('hover');
			   
			}
			
		
		}
	});
		$(".left_area .nav .father").click(function() {
			$(this).toggleClass("active");
			$(this).children(".child_area").slideToggle();
			
		});

});
</script>

<div class="top_banner_box">
	<div class="bg"></div>
	<div class="text_pic_box">
		<img src="app/img/default/heart.png">
		<h2>Listen to the voice <br>
			of the body...</h2>
	</div>
	<div class="bottom_pic"></div>
</div>
<div class="content01">
	<div class="left_area">
		<div class="nav">
			<div class="father">
				<a href="" class="li">
					Sed id dolor. In hac habitasse platea dictumst.
				</a>
			</div>
		</div>
	</div>
	<div class="right_area">
		<div class="top_title_box">
			<div class="title">
				<img src="app/img/index/sketch_light.gif" class="sketch_light">
				<h1>最新消息</h1>
			</div>
			<div class="sketch_grass">
				<img src="app/img/index/sketch_grass2.gif">
			</div>
		</div>
		<div class="text_area">
		
			<a href="" class="item_box">
				<div class="pic_box">
					<div class="pic">
						<img src="app/img/note/pic.jpg">
					</div>
					<div class="dotted_bg"></div>
				</div>
				<div class="text_date_box">
					<div class="date">2015.09.02</div>
					<div class="text">
						<h2>This is Lorem Ipsum,</h2>
						<p>我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，...</p>
					</div>
				</div>
				<div  class="arrow">
					<img src="app/img/note/arrow.png">
				</div>
			</a>
			<a href="" class="item_box">
				<div class="pic_box">
					<div class="pic">
						<img src="app/img/note/pic.jpg">
					</div>
					<div class="dotted_bg"></div>
				</div>
				<div class="text_date_box">
					<div class="date">2015.09.02</div>
					<div class="text">
						<h2>This is Lorem Ipsum,</h2>
						<p>我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，...</p>
					</div>
				</div>
				<div  class="arrow">
					<img src="app/img/note/arrow.png">
				</div>
			</a>
			<a href="" class="item_box">
				<div class="pic_box">
					<div class="pic">
						<img src="app/img/note/pic.jpg">
					</div>
					<div class="dotted_bg"></div>
				</div>
				<div class="text_date_box">
					<div class="date">2015.09.02</div>
					<div class="text">
						<h2>This is Lorem Ipsum,</h2>
						<p>我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，...</p>
					</div>
				</div>
				<div  class="arrow">
					<img src="app/img/note/arrow.png">
				</div>
			</a>
				<a href="" class="item_box">
				<div class="pic_box">
					<div class="pic">
						<img src="app/img/note/pic.jpg">
					</div>
					<div class="dotted_bg"></div>
				</div>
				<div class="text_date_box">
					<div class="date">2015.09.02</div>
					<div class="text">
						<h2>This is Lorem Ipsum,</h2>
						<p>我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，...</p>
					</div>
				</div>
				<div  class="arrow">
					<img src="app/img/note/arrow.png">
				</div>
			</a>
		
		</div>
	</div>
</div>	

<?=$temp['footer_bar']?>
<?=$temp['body_end']?>