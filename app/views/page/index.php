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
		
		
		
		var content_bottom_top = $('.moveing_area').offset().top;
		var content_bottom_height_all = $('.moveing_area').heightAll();
		if(scroll_top == 0 )
        {

			
        }

		
		if(scroll_top_height >= content_bottom_top)
		{
			var s1 = (scroll_top_height - content_bottom_top) * 1.5;
			$('.moveing_area').addClass('hover');
			$('.moveing_area .content').css('transform', 'translate(-' + s1 + 'px, 0)');
			
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

<div class="moveing_area">
	<div class="content one">
		<div class="border">
			<img src="app/img/index/789.png" class="ddd">
			<div class="circle"></div>
			<div class="circle-works__mask2">
				<img src="app/img/index/aa.png" class="circle-works__mask">
				<img src="app/img/index/aa.png" class="img2">
				<img src="app/img/index/dd.png" class="img">
			</div>
		</div>
	</div>
	<div class="content two"></div>
	<div class="content three"></div>
	<div class="content four "></div>
	<div class="content five"></div>
</div>





<?=$temp['footer_bar']?>
<?=$temp['body_end']?>