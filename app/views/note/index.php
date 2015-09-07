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

			
			
		}
		if(window_width >= 1400){
			
			
			
		
		}
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
		<div class="hot_note"> HOT NOTE</div>
		<div class="nav">
			<div class="father">
				<a href="">Sed id dolor. In hac habitasse platea dictumst.</a>
			</div>
			<div class="father">
				<a href="">Sed id dolor. In hac .</a>
			</div>
			<div class="father">
				<a href="">Sed id dolor. In hac habitasse platea dictumst.</a>
			</div>
			<div class="father">
				<a href="">Sed id dolor. In hac habitasse platea dictumst.</a>
			</div>
			<div class="father">
				<a href="">Sed id dolor. In hac .</a>
			</div>
			<div class="father">
				<a href="">Sed id dolor. In hac habitasse platea dictumst.</a>
			</div>
			<div class="father">
				<a href="">Sed id dolor. In hac .</a>
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
			<?for($i=0;$i<6;$i++):?>
			<a href="note/view" class="item_box">
				<div class="center_box">
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
							<p>我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，...關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術關懷的心與專業的技術</p>
						</div>
					</div>
					<div  class="arrow">
						<img src="app/img/note/arrow.png">
					</div>
				</div>
			</a>
			<?endfor?>

			<div class="pager_bottom">
				<div class="pageLinks_bg">
					<div class="pageLinks">
						<a class="prev"><img src="app/img/note/pager.png"></a>
						<strong>1</strong>
						<a>2</a>
						<a>3</a>
						<a>4</a>
						<a>5</a>
						<a class="next"><img src="app/img/note/pager.png"></a>
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>	
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>