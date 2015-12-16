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
	
	$(" .phone_nav  .hide_box ").hide()
	$(" .phone_nav .phone_father ").click(function() {
		$(this).toggleClass("active");
		$(" .phone_nav  .hide_box ").slideToggle();
	});
	
	$(".child_area").hide();
	$(".father_item").click(function() {
		$(this).toggleClass("active");
		$(this).children(".child_item").slideToggle();
	});
	
});
</script>

<div class="top_banner_box">
	
	<div class="text_box">	
		<h2>為你打造美麗俏佳人</h2>
		<h2>For you to create beautiful Bride</h2>
	</div>	
</div>
<div class="content01">
	<div class="left_area">
		<div class="nav">
			<div class="list_title">
				療程項目
			</div>
			<div class="father_item">
				<p>微整形</p>
				<div class="child_item">
					<?for($crcle=0;$crcle<6;$crcle++):?>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">鈴鐺線拉提</div></a>
					<?endfor?>
				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>整形外科</p>
				<div class="child_item">
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">鈴鐺線拉提</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">脂肪填補(臉部雕塑)</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">雙眼皮手術</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">眼袋手術</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">隆鼻手術</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">下巴整形</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">隆乳手術隆乳手術</div></a>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span><div class="item">z波黃金脂雕Ultra-Z(抽脂/體雕)</div></a>

				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>美機保養</p>
				<div class="child_item">
					<?for($crcle=0;$crcle<5;$crcle++):?>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span>frtgrtgryb6y</a>
					<?endfor?>
				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>抗老化</p>
				<div class="child_item">
					<?for($crcle=0;$crcle<3;$crcle++):?>
					<a href="page/<?=$value_Pager->slug_Str?>"><span></span>frtgrtgryb6y</a>
					<?endfor?>
				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>健康管理</p>
				<div class="child_item">
					
					<a href="page/<?=$value_Pager->slug_Str?>">frtgrtgryb6y</a>
					
				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
		</div>
		<!--<div class="phone_nav">
			<div class="phone_father">
				<?=$PagerField->title_Str?>
				<span></span>
			</div>
			<div class="hide_box">
			</div>
		</div>-->
	</div>
	<div class="right_area">
		<div class="navigation_box">
			<span>療程項目</span> / <a href="">整形外科</a> / <span class="color">雙眼皮手術</span>
		</div>
		<div class="top_title_box">
			<div class="long_box">
				<div class="circle"></div>
				<div class="line_short"></div>
				<h1>雙眼皮手術</h1>
				<div class="line_long"></div>
			</div>
		</div>
		<div class="text_area">
			Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.
		</div>
		<a href="showpiece" class="prev">BACK <div class="arrow">▲</div></a>
	</div>
</div>	

<?=$temp['footer_bar']?>
<?=$temp['body_end']?>