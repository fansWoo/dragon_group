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
<div class="content01">
	<div class="ietm_area">
		<div class="top_title_box">
			<div class="long_box">
				<div class="circle"></div>
				<div class="line_short"></div>
				<h1><?=$NoteField->class_ClassMetaList->obj_Arr[0]->classname_Str?></h1>
				<div class="line_long"></div>
			</div>
		</div>
		<div class="center_area">
			<div class="text_area">
				<div class="title_box">
					<div class="title"><?=$NoteField->title_Str?></div>
					<div class="date"><div class="line"></div><?=$NoteField->updatetime_DateTime->getdate_Arr['year']?> . <?=sprintf("%02d",$NoteField->updatetime_DateTime->getdate_Arr['mon'])?> . <?=sprintf("%02d",$NoteField->updatetime_DateTime->getdate_Arr['mday'])?></div>
				</div>
				<p><?=$NoteField->content_Html?></p>
			</div>
			<a href="note" class="more">
				BACK <span>▲</span>
			</a>
		</div>
		<div class="right_list">
			<div class="nav">
				<div class="hot_note">文章分類</div>
					<?foreach($ClassMetaList->obj_Arr as $key => $value_ClassMeta):?>
						<a href="note/?class_slug=<?=$value_ClassMeta->slug_Str?>" class="father">
							<p><?=$value_ClassMeta->classname_Str?></p>
						</a>
				<?endforeach?>
			</div>
		</div>		
	</div>
</div>		
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>