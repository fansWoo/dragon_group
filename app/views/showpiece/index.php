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
	$(".father_item").mouseenter(function() {
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
			<?foreach($class_ClassMetaList->obj_Arr as $key => $value_ClassMeta):?>
				<div class="father_item">
				<a href="showpiece?class_slug=<?=$value_ClassMeta->slug_Str?>" style="color:#955f1c;">
					<p><?=$value_ClassMeta->classname_Str?></p>
				</a>
					<div class="child_item">
						<?foreach($showpiece_ShowpieceList->obj_Arr as $key => $value_showpiece):?>
							<?if(($value_ClassMeta->classid_Num)==($value_showpiece->class_ClassMetaList->obj_Arr[0]->classid_Num)):?>
								<a href="showpiece/<?=$value_showpiece->showpieceid_Num?>?class_slug=<?=$value_ClassMeta->slug_Str?>"><span></span><div class="item"><?=$value_showpiece->name_Str?></div></a>
							<?endif?>
						<?endforeach?>
					</div>
				<img src="app/img/showpiece/footer_arrow.png">
				</div>
			<?endforeach?>
		</div>
	</div>
	<div class="right_area">
		<div class="navigation_box">
			<span>療程項目</span> / <span class="color"><?=$class_ClassMeta->classname_Str?></span>
		</div>
		<div class="top_title_box">
			<div class="long_box">
				<div class="circle"></div>
				<div class="line_short"></div>
				<h1><?=$class_ClassMeta->classname_Str?></h1>
				<div class="line_long"></div>
			</div>
		</div>
		<div class="text_area">
			<?foreach($showpiece_ShowpieceList->obj_Arr as $key => $value_showpiece):?>
			<?if(($value_showpiece->class_ClassMetaList->obj_Arr[0]->slug_Str)==$search_class_slug_Str):?>
			<a href="showpiece/<?=$value_showpiece->showpieceid_Num?>?class_slug=<?=$search_class_slug_Str?>" class="item_box">
				<div class="pic_box">
					<div class="bg"></div>
					<?if(!empty($value_showpiece->pic_PicObjList->obj_Arr)):?>
						<img src="<?=$value_showpiece->pic_PicObjList->obj_Arr[0]->path_Arr['w0h0']?>">
					<?else:?>
						<img src="app/img/showpiece/01.jpg"> <!-- 若沒上傳圖片使用預設圖片 -->
					<?endif?>
				</div>
				<div class="right_box">
					<div class="text">
						<div class="p">
							<?=$value_showpiece->name_Str?>
						</div>
					</div>
				</div>
				<div class="arrow"></div>
			</a>
			<?endif?>
			<?endforeach?>
		</div>
	</div>
</div>
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>