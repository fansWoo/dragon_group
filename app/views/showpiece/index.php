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
	<!--<div class="bg"></div>
	<div class="text_pic_box">
		<img src="app/img/default/heart.png">
		<h2>Listen to the voice <br>
			of the body...</h2>
	</div>
	<div class="bottom_pic"></div>-->
</div>
<div class="content01">
	<div class="left_area">
		<div class="nav">
			<div href="" class="father">
				<a href="showpiece/view/?showpieceid=1" class="li">
					歷史沿革
					<span></span>
				</a>
			</div>
			<div  class="father">
				<a href="" class="li">
					合作夥伴
					<span></span>
				</a>
				<div class="child_area">
					<a href="" class="button">啟美藥局</a>
					<a href="" class="button">亞欣醫美診所</a>
					<a href="" class="button" >USIES</a>
				</div>
		 </div>
			<div  class="father">
				<a href="" class="li">
					服務項目
					<span></span>
				</a>
			</div>
		</div>
		<div class="phone_nav">
			<div class="phone_father">
				<?=$PagerField->title_Str?>
				<span></span>
			</div>
			<div class="hide_box">
			</div>
		</div>
	</div>
	<div class="right_area">
		<div class="top_title_box">
			<div class="title">
				<img src="app/img/index/sketch_light.gif" class="sketch_light">
				<h1>鈴鐺線拉提</h1>
				
			</div>
			<div class="sketch_grass">
				<img src="app/img/index/sketch_grass2.gif">
			</div>
		</div>
		<div class="text_area">
			<p></p> 
			 <p>鈴鐺線拉提是一種微創拉皮術，手術只需局部麻醉，安全性高。手術一開始會於髮際線後方兩公分處開出約1.5CM左右的微創傷口(傷口隱密不易被察覺)。利用約1.5CM的傷口將塑形線固定在深層筋膜，再將特殊塑線材拉緊欲改善的部位並固定線材，達到積極改善鬆弛下垂的目的。</p>
			<p>特點
非手術性: 非手術性的療程，只需局部麻醉。
快速: 療程時間約1小時。
即時效果: 立即見效。
恢復期短: 恢復期約一週。
安全性: 獲美國食品藥物管理局(FDA)及歐洲藥品評鑑局(CE)及台灣衛福部核准三重認證。
效果持久: 由於圓錐和線的設計強韌和持久度佳。LIFT(大鈴鐺線) 3~5年，SOFT(小鈴鐺線、圓錐線) 1~2年。
降低不舒適性: 線的厚度上是很細，圓錐體的設計既軟又圓，大大降低針扎感。

適應症:  30~35歲下垂程度明顯之肌膚狀況
適應部位:  眉形拉提/眼尾下垂/法令紋/嘴邊肉/蘋果肌下垂/雙下巴/雞脖子/下顎線V-line拉提
</p> 
			 <img src="app/img/default/pic3.png">
		</div>
	</div>
</div>	

<?=$temp['footer_bar']?>
<?=$temp['body_end']?>