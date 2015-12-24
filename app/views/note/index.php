<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['header_bar']?>
<script src="app/js/smooth_scrollerator.js"></script>
<script>
	$(document).scroll(function(){	
		var scroll_top = $(document).scrollTop();
		var content_portfolio_top = $(window).height();
		var content_portfolio_height_all =  $('.content01 .center_area').height() - 450;
		var content_portfolio_height_all_1600 =  $('.content01 .center_area').height() - 200;
		var scroll_top_height = scroll_top + $(window).height();
		console.log(scroll_top);
		var window_width = $(window).width();
		if(window_width > 960 && window_width <= 1600){
			
			if(scroll_top >= content_portfolio_height_all )
			{
				$(' .left_bg').addClass('fixed');
						
			}
			if(scroll_top < content_portfolio_height_all ){
				
				$(' .left_bg').removeClass('fixed');
						
			}
		}

	});	
</script>
<div class="content01">
	<div class="left_bg">
		<img src="app/img/note/pic.png">
	</div>
	<div class="ietm_area">
		<div class="top_title_box">
			<div class="long_box">
				<div class="circle"></div>
				<div class="line_short"></div>
				<?if($search_class_slug_Str == NULL):?>
				<h1>最新消息</h1>
				<?else:?>
				<h1><?=$class_ClassMeta->classname_Str?></h1>
				<?endif?>
				<div class="line_long"></div>
			</div>
		</div>
		<div class="center_area">
			<div class="text_area">
				<?foreach($NoteFieldList->obj_Arr as $key => $value_NoteField):?>
				<a href="note/<?=$value_NoteField->noteid_Num?>" class="item_box">
					<div class="center_box">
						<div class="text_date_box">
							<div class="date"><?=$value_NoteField->updatetime_DateTime->getdate_Arr['year']?> . <?=$value_NoteField->updatetime_DateTime->getdate_Arr['mon']?> . <?=$value_NoteField->updatetime_DateTime->getdate_Arr['mday']?></div>
							<div class="text">
								<h2><?=$value_NoteField->title_Str?></h2>
								<p><?=mb_substr(strip_tags($value_NoteField->content_Html), 0, 60, 'utf-8')?>...</p>
							</div>
						</div>
						<div  class="more">
							MORE <span>▲</span>
						</div>
					</div>
				</a>
				<?endforeach?>
				<div class="pager_bottom">
					<div class="pageLinks_bg">
						<div class="pageLinks">
							<?=$page_link?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="right_list">
			<div class="hot_note">文章分類</div>
				<div class="nav">
					<a href="note" class="father">
						<p>最新消息</p>
					</a>
					<?foreach($ClassMetaList->obj_Arr as $key => $value_ClassMeta):?>
						<a href="note/?class_slug=<?=$value_ClassMeta->slug_Str?>" class="father">
							<p><?=$value_ClassMeta->classname_Str?></p>
						</a>
					<?endforeach?>
				</div>
			</div>
		</div>	
	</div>
</div>
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>