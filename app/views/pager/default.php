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
	
	$(".left_area .nav .father").click(function() {
		$(this).toggleClass("active");
		$(this).children(".child_area").slideToggle();
		
	});
	$(" .phone_nav  .hide_box ").hide()
	$(" .phone_nav .phone_father ").click(function() {
		$(this).toggleClass("active");
		$(" .phone_nav  .hide_box ").slideToggle();
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
			<?foreach($PagerList->obj_Arr as $key => $value_Pager):?>
				<div class="father">
					<a href="page/<?=$value_Pager->slug_Str?>" class="li">
						<?=$value_Pager->title_Str?>
						<span></span>
					</a>
				</div>
			<?endforeach?>
		</div>
		<div class="phone_nav">
			<div class="phone_father">
				<?=$PagerField->title_Str?>
				<span></span>
			</div>
			<div class="hide_box">
				<?foreach($PagerList->obj_Arr as $key => $value_Pager):?>
					<a href="page/<?=$value_Pager->slug_Str?>" class="li"><?=$value_Pager->title_Str?></a>	
				<?endforeach?>
			</div>
		</div>
	</div>
	<div class="right_area">
		<div class="top_title_box">
			<div class="title">
				<img src="app/img/index/sketch_light.gif" class="sketch_light">
				<h1><?=$PagerField->title_Str?></h1>
				
			</div>
			<div class="sketch_grass">
				<img src="app/img/index/sketch_grass2.gif">
			</div>
		</div>
		<div class="text_area">
			<p><?=$PagerField->content_Html?></p>
		</div>
	</div>
</div>	
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>