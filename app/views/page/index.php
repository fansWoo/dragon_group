<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['header_bar']?>

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
	var window_height = $(window).height();
	$('.ff').css('height', window_height);
	$('.ff').css('height', window_height);
	$(window).resize(function(){
		var window_height = $(window).height();
		$('.ff').css('height', window_height);
		$(' .ff').css('height', window_height);
		
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
		if(scroll_top == 0 )
        {

			
        }

		
		if(scroll_top_height >= content_bottom_top)
		{
			var s1 = (scroll_top_height - content_bottom_top) * 1.5;
			$('.scroll_area').addClass('hover');
			$('.scroll_area .content').css('transform', 'translate(-' + s1 + 'px, 0)');
			
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
	<div class="content one" id="content_one">
		<div class="left_text_box">
			<h1>引人注目的廣告文案</h1>
			<h2>引人注目的廣告文案廣告文案，
			的廣告文案廣告文案，
			廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案廣告文案廣告。</h2>
			<h2>引人注目的廣告文案廣告文案，
			的廣告文案廣告文案，
			廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案廣告文案廣告。</h2>
		</div>
	
		<div class="moveing_box">
			<div class="orange_box">
				<img src="app/img/index/orange_circle.png" class="orange_circle">	
				<div class="text">
					<p>如何愛自己？</p>
					<h4>傾聽身體的聲音<br>及時就診檢查</h4>
					<h5>〉〉〉</h5>
				</div>
			</div>
			<div class="circle_dashed"></div>
			<div class="rotate_border_box">
				<div class="circle_border">
					<img src="app/img/index/aa.png" class="circle_border_pic">
					<img src="app/img/index/aa.png" class="img2">
					<img src="app/img/index/dd.png" class="img">
				</div>
			</div>
		</div>
	</div>
	<div class="content two" id="content_two"></div>
	<div class="content three" id="content_three"></div>
	<div class="content four " id="content_four"></div>
	<div class="content five" id="content_five"></div>
</div>





<?=$temp['footer_bar']?>
<?=$temp['body_end']?>