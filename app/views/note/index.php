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
		<!-- <div class="hot_note">最新消息</div>
			<div class="nav">
				<?foreach($new_NoteFieldList->obj_Arr as $key => $value_NoteField):?>
					<div class="father">
						<a href="note/<?=$value_NoteField->noteid_Num?>"><?=$value_NoteField->title_Str?></a>
	        		</div>
	        	<?endforeach?>
			</div> -->
		<div class="hot_note">文章分類</div>
			<div class="nav">
				<?foreach($ClassMetaList->obj_Arr as $key => $value_ClassMeta):?>
					<div class="father">
						<a href="note/?class_slug=<?=$value_ClassMeta->slug_Str?>"><?=$value_ClassMeta->classname_Str?></a>
					</div>
				<?endforeach?>
			</div>
		</div>
	<div class="right_area">
		<div class="top_title_box">
			<div class="title">
				<img src="app/img/index/sketch_light.gif" class="sketch_light">
				<?if($search_class_slug_Str == NULL):?>
				<h1>最新消息</h1>
				<?else:?>
				<h1><?=$value_NoteField->class_ClassMetaList->obj_Arr[0]->classname_Str?></h1>
				<?endif?>
			</div>
			<div class="sketch_grass">
				<img src="app/img/index/sketch_grass2.gif">
			</div>
		</div>
		<div class="text_area">
			<?foreach($NoteFieldList->obj_Arr as $key => $value_NoteField):?>
			<a href="note/<?=$value_NoteField->noteid_Num?>" class="item_box">
				<div class="center_box">
					<div class="pic_box">
						<div class="pic">
							<?
								$this->load->library('SimpleHtmlDom');
								$html = new SimpleHtmlDom();
								$html->load($value_NoteField->content_Html);
								$img = $html->find('img', 0);
							?>
							<img src="<?=$img->src?>">
							<!-- <img src="app/img/note/pic.jpg"> -->
						</div>
						<div class="dotted_bg"></div>
					</div>
					<div class="text_date_box">
						<div class="date"><?=$value_NoteField->updatetime_DateTime->getdate_Arr['year']?> . <?=$value_NoteField->updatetime_DateTime->getdate_Arr['mon']?> . <?=$value_NoteField->updatetime_DateTime->getdate_Arr['mday']?></div>
						<div class="text">
							<h2><?=$value_NoteField->title_Str?></h2>
							<p><?=mb_substr(strip_tags($value_NoteField->content_Html), 0, 150, 'utf-8')?></p>
						</div>
					</div>
					<div  class="arrow">
						<img src="app/img/note/arrow.png">
					</div>
				</div>
			</a>
			<?endforeach?>
			<!-- <a href="note/view" class="item_box">
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
			</a> -->

			<div class="pager_bottom">
				<div class="pageLinks_bg">
					<div class="pageLinks">
						<!-- <a class="prev"><img src="app/img/note/pager.png"></a> -->
						<?=$page_link?>
						<!-- <strong>1</strong>
						<a>2</a>
						<a>3</a>
						<a>4</a>
						<a>5</a> -->
						<!-- <a class="next"><img src="app/img/note/pager.png"></a> -->
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>	
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>