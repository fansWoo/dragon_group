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
					<a href="showpiece/1"><span></span><div class="item">鈴鐺線拉提</div></a>
					<a href="showpiece/1"><span></span><div class="item">脂肪填補(臉部雕塑)</div></a>
					<a href="showpiece/1"><span></span><div class="item">雙眼皮手術</div></a>
					<a href="showpiece/1"><span></span><div class="item">眼袋手術</div></a>
					<a href="showpiece/1"><span></span><div class="item">隆鼻手術</div></a>
					<a href="showpiece/1"><span></span><div class="item">下巴整形</div></a>
					<a href="showpiece/1"><span></span><div class="item">隆乳手術隆乳手術</div></a>
					<a href="showpiece/1"><span></span><div class="item">z波黃金脂雕Ultra-Z(抽脂/體雕)</div></a>

				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>美機保養</p>
				<div class="child_item">
					<?for($crcle=0;$crcle<5;$crcle++):?>
					<a href="showpiece/1"><span></span>frtgrtgryb6y</a>
					<?endfor?>
				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>抗老化</p>
				<div class="child_item">
					<?for($crcle=0;$crcle<3;$crcle++):?>
					<a href="showpiece/1"><span></span>frtgrtgryb6y</a>
					<?endfor?>
				</div>
				<img src="app/img/showpiece/footer_arrow.png">
			</div>
			<div class="father_item">
				<p>健康管理</p>
				<div class="child_item">
					
					<a href="showpiece/1">frtgrtgryb6y</a>
					
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
			<span>療程項目</span> / <span class="color">整形外科</span>
		</div>
		<div class="top_title_box">
			<div class="long_box">
				<div class="circle"></div>
				<div class="line_short"></div>
				<h1>整形外科</h1>
				<div class="line_long"></div>
			</div>
		</div>
		<div class="text_area">
			<?for($crcle=0;$crcle<3;$crcle++):?>
			<a href="showpiece/1" class="item_box">
				<div class="pic_box">
					<div class="bg"></div>
					<img src="app/img/showpiece/01.jpg">	
				</div>
				<div class="right_box">
					<div class="text">
						<div class="p">
							鈴鐺線拉提
						</div>
					</div>
				</div>
				<div class="arrow"></div>
			</a>
			<?endfor?>
			<?for($crcle=0;$crcle<3;$crcle++):?>
			<a href="showpiece/1" class="item_box">
				<div class="pic_box">
					<div class="bg"></div>
					<img src="app/img/showpiece/06.jpg">	
				</div>
				<div class="right_box">
					<div class="text">
						<div class="p">
							下巴整形
						</div>
					</div>
				</div>
				<div class="arrow"></div>
			</a>
			<?endfor?>
			<?for($crcle=0;$crcle<2;$crcle++):?>
			<a href="showpiece/1" class="item_box">
				<div class="pic_box">
					<div class="bg"></div>
					<img src="app/img/showpiece/08.jpg">	
				</div>
				<div class="right_box">
					<div class="text">
						<div class="p">
							z波黃金脂雕Ultra-Z(抽脂/體雕)
						</div>
					</div>
				</div>
				<div class="arrow"></div>
			</a>
			<?endfor?>
		</div>
	</div>
</div>	

<?=$temp['footer_bar']?>
<?=$temp['body_end']?>