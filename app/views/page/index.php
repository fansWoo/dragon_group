<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['header_bar']?>
<script src="app/js/smooth_scrollerator.js"></script>
<script>
$(function(){
	$(document).scroll(function(){
		var window_width = $(window).width();

		var scroll_top = $(document).scrollTop();
		if(scroll_top == 0){
			$('.wrapMarketing, .wrapGraphic, .wrapProgram , .portfolio_box1 , .portfolio_box2 , .portfolio_box3 , .portfolio_box4 , #pic_move_pic1' ).removeClass('hover');
			$('.content1').addClass('hover');

		}
		if(window_width > 1024 && window_width < 1400){
			if(scroll_top > 4500 && scroll_top < 6500){
				$('.videoFixed').addClass('hover');
			}
			else if(scroll_top  < 4500){
				$('.videoFixed').removeClass('hover');
			}
			else if(scroll_top  > 6500){
				$('.videoFixed').removeClass('hover');
			}
			
			else if(scroll_top >= 1000 && scroll_top < 2000){
				$('.wrapMarketing').addClass('hover');
			}
			else if(scroll_top >= 2000 && scroll_top < 2500){
				$('.wrapGraphic').addClass('hover');
			}
			else if(scroll_top >= 2500 && scroll_top < 3100){
				$('.wrapProgram').addClass('hover');
			}
			else if(scroll_top >= 3100 && scroll_top < 4500){
				$('.portfolio_box1').addClass('hover');
			}
			else if(scroll_top >= 4500 && scroll_top < 5000 ){
				$('.portfolio_box2').addClass('hover');
			   
			}
			else if(scroll_top >= 5000 && scroll_top < 7500 ){
				$('.portfolio_box3').addClass('hover');
			   
			}
			else if(scroll_top >= 7500 && scroll_top < 8450 ){
				$('.portfolio_box4').addClass('hover');
			   
			}
			else if(scroll_top >= 8450 && scroll_top < 9400 ){
				$('#pic_move_pic1').addClass('hover');
			   
			}
			else if(scroll_top >= 9400 && scroll_top < 9900 ){
				$('#pic_move_pic2').addClass('hover');
			   
			}
			else if(scroll_top >= 9900 && scroll_top < 10400 ){
				$('#pic_move_pic3').addClass('hover');
			   
			}
			else if(scroll_top >= 10400 && scroll_top < 14050 ){
				$('#pic_move_pic4').addClass('hover');
			   
			}
		}
		if(window_width >= 1400){
		
		}
	});
	$('a[href^=#]').click(function () {
		var speed = 500;
		var href = $(this).attr("href");
		var target = $(href == "#" || href == "" ? 'html' : href);
		var position = target.offset().top;
		$("html , body").animate({scrollTop: position}, speed, "swing");
			return false;
	});
	$(document).on('mouseenter', '.scroll_area .moveing_box , .scroll_area .orange_box ', function(){
		$(this).addClass('hover');
		$('.moveing_box ').addClass('hover');	
		$('.orange_box ').addClass('hover');
	});
	$(document).on('mouseenter', ' .scroll_area .orange_box , .scroll_area .moveing_box', function(){
		$(this).addClass('hover');
		$('.moveing_box ').addClass('hover');
		$('.orange_circle ').addClass('hover');
	});
	$(document).on('mouseleave', '.scroll_area .moveing_box ,  .scroll_area .orange_box ', function(){
		$(this).removeClass('hover');
		$('.moveing_box ').removeClass('hover');
		$('.orange_box ').removeClass('hover');
	});
	//if($(document).scrollTop() !== 0)
	//{
		//$(document).scrollTop(0);
		//location.href = 'page/index';
	//}
	$(document).scroll(function(){
        var scroll_top = $(document).scrollTop();
        var scroll_top_height = scroll_top;
		console.log(scroll_top);
		var content_bottom_top = $('.scroll_area').offset().top;
		var content_bottom_height_all = $('.scroll_area').heightAll();
		if(scroll_top_height >= content_bottom_top)
		{
			var s1 = (scroll_top_height - content_bottom_top) * 1.5;
			var p7 = (scroll_top_height - content_bottom_top) / 3 ;
			
			$('.scroll_area').addClass('hover');
			$('.scroll_area .content').css('transform', 'translate(-' + s1 + 'px, 0)');
			$('.scroll_area .orange_pic').css('transform', ' rotate(' + p7 + 'deg)');
			

		}

		
    });
});
</script>
<script src="js/test/jquery-1.11.2.min.js"></script>
<script src="js/test/jquery.transit.min.js"></script>
<script src="js/test/jquery.easing.1.3.min.js"></script>
<script src="js/test/util.min.js"></script>
<script src="js/test/main.min.js"></script>
<script src="js/test/func.min.js"></script>

<div class="scroll_area">
	<div class="content one" >
		<a href="#content_two" class="arrow1" id="content_one"></a>
		<div class="road">
			<img src="app/img/index/road01.png" >	
		</div>
		<div class="road2">
			<img src="app/img/index/road02.png" >	
		</div>
		<div class="heart">
			<img src="app/img/index/heart.png" >	
		</div>
		<div class="sketch_grass2">
			<img src="app/img/index/sketch_grass2.gif" >	
		</div>
		<div class="sketch_light one">
			<img src="app/img/index/sketch_light.gif" >	
		</div>
		<div class="sketch_light two">
			<img src="app/img/index/sketch_light.gif" >	
		</div>
		<div class="left_text_box">
			<h1>引人注目的廣告文案</h1>
			<h2>引人注目的廣告文案廣告文案，
			的廣告文案廣告文案，
			廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案廣告文案廣告。</h2>
			<h2>引人注目的廣告文案廣告文案，
			的廣告文案廣告文案，
			廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案廣告文案廣告。</h2>
		</div>
		<div class="right_text_box">
			<h3>龍安診所</h3>
			<p>請提供診所服務項目介紹或溫馨動人的小故事。請提供診所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
			<p>請提供診所服務項目、溫馨動人</p>
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
			</div>
		</div>
		<a href="" class="orange_box">
			<div class="orange_circle">
				<img src="app/img/index/orange_circle.png" class="orange_pic">
				<img src="app/img/index/orange_circle_hover.png" class="hover_orange_pic">	
			</div>
			<div class="hover_text">
				<img src="app/img/index/hover_text.png" >
			</div>			
			<div class="text">
				<p>如何愛自己？</p>
				<h4>傾聽身體的聲音<br>及時就診檢查</h4>
				<h5>〉〉〉</h5>
			</div>
		</a>
		<div class="moveing_box">
			<div class="circle_dashed"></div>
			<div class="rotate_border_box">
				<div class="circle_border">
					<img src="app/img/index/aa.png" class="circle_border_pic">
					<img src="app/img/index/aa.png" class="img2">
					<img src="app/img/index/dd.png" class="img">
					<div class="hover_box"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="content two" >
		<a href="#content_one" class="arrow2" id="content_two"></a>
		<div class="right_text_box">
			<h3>啟美藥局</h3>
			<p>請提供診所服務項目介紹或溫馨動人的小故事。請提供診所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
			<p>請提供診所服務項目、溫馨動人</p>
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
			</div>
		</div>
		<a href="" class="orange_box">
			<div class="orange_circle">
				<img src="app/img/index/orange_circle.png" class="orange_pic">
				<img src="app/img/index/orange_circle_hover.png" class="hover_orange_pic">	
			</div>
			<div class="hover_text">
				<img src="app/img/index/hover_text.png" >
			</div>			
			<div class="text">
				<p>如何愛自己？</p>
				<h4>遵守醫生指示<br> 正確服藥</h4>
				<h5>〉〉〉</h5>
			</div>
		</a>
		<div class="moveing_box">
			<div class="circle_dashed"></div>
			<div class="rotate_border_box">
				<div class="circle_border">
					<img src="app/img/index/bb.png" class="circle_border_pic">
					<img src="app/img/index/bb.png" class="img2">
					<img src="app/img/index/pic02.png" class="img">
					<div class="hover_box"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="content three" id="content_three"></div>
	<div class="content four " id="content_four"></div>
	<div class="content five" id="content_five"></div>
</div>





<?=$temp['footer_bar']?>
<?=$temp['body_end']?>