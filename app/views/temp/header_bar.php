<link rel="stylesheet" type="text/css" href="app/js/scrollbar/jquery.mCustomScrollbar.css">
<script src="app/js/scrollbar/jquery.mCustomScrollbar.min.js"></script>

<script>
$(function(){
	var phone_scrollbar_height = $(window).height() - 80 ;
	var width_scrollbar = $('.header_bar_mobile_content ').css(' width ', '200px' );
	$('.header_bar_mobile_content .scrollbar').mCustomScrollbar({

		theme:"dark", // 設定捲軸樣式
		setWidth: width_scrollbar , // 設定寬度
		setHeight: phone_scrollbar_height ,  // 設定高度	
	});
	
	var window_width = $(window).width();
	var window_height = $(window).height();

	$('a[href^=#]').click(function () {
		var speed = 500;
		var href = $(this).attr("href");
		var target = $(href == "#" || href == "" ? 'html' : href);
		var position = target.offset().top;
		$("html, body").animate({scrollTop: position}, speed, "swing");
			return false;
	});
	$(".child_area").hide();
	$(".header_bar_mobile_content .header_father_area").click(function() {
		$(this).toggleClass("active");
		$(this).children(".child_area").slideToggle();
	});
	
});
</script>
<div class="body">
	<div class="header_bar">
		<div class="center">
			<div class="logo_box">
				<a href=""><img src="app/img/logo.png"></a>
			</div>
			<div class="left_text">
				為您經營 由內而外 專屬您的美
			</div>
			<div class="right_nav">
				<div class="li">
					<a href="page/about" class="button">關於龍安</a>
				</div>
				<div class="li">
					<a class="button">療程項目</a>
					<div class="down_box">
						<?foreach($showpiece_ClassMetaList->obj_Arr as $key => $value_showpiece_ClassMeta):?>
							<a href="showpiece?class_slug=<?=$value_showpiece_ClassMeta->slug_Str?>" class="button2"><div class="p"><?=$value_showpiece_ClassMeta->classname_Str?></div></a>
						<?endforeach?>
					</div>
				</div>
				<div class="li">
					<a class="button">案例分享</a>
					<div class="down_box">
						<?foreach($cases_PageList->obj_Arr as $key => $value_PageList):?>
							<a href="page/<?=$value_PageList->slug_Str?>" class="button2"><div class="p"><?=$value_PageList->title_Str?></div></a>
						<?endforeach?>
					</div>
				</div>
				<div class="li"><a href="note" class="button">最新消息</a></div>
				<div class="li"><a href="contact" class="button">線上預約</a></div>
				<div class="li fb"><a href="https://www.facebook.com/DragonHealthcare?skip_nax_wizard=true&ref_type=bookmark" target="_blank" class="button fb"><img src="app/img/header/fb.png"></a></div>
			</div>
		</div>
	</div>
	<div class="header_bar_mobile">
		<div class="phone_logo_box">
			<img src="app/img/header/mobile_logo.png">
		</div>
		<div class="menu">
			<img src="app/img/menu.png">
		</div>
	</div>
	<div class="header_bar_mobile_content">
		<div class="scrollbar">
			<a class="li" href="<?=base_url()?>">首頁</a>
			<a class="li" href="page/about">關於龍安</a>
			<div class="header_father_area">
				<img src="app/img/footer_arrow2.png" class="arrow">
				<p>療程項目</p>
				<div class="child_area">
					<?foreach($showpiece_ClassMetaList->obj_Arr as $key => $value_showpiece_ClassMeta):?>
						<a href="showpiece?class_slug=<?=$value_showpiece_ClassMeta->slug_Str?>" class="button2"><div class="p"><?=$value_showpiece_ClassMeta->classname_Str?></div></a>
					<?endforeach?>
				</div>
			</div>
			<div class="header_father_area">
				<img src="app/img/footer_arrow2.png" class="arrow">
				<p>案例分享</p>
				<div class="child_area">
					<?foreach($cases_PageList->obj_Arr as $key => $value_PageList):?>
						<a href="page/<?=$value_PageList->slug_Str?>" class="button2"><div class="p"><?=$value_PageList->title_Str?></div></a>
					<?endforeach?>
				</div>
			</div>
			<a class="li" href="note">最新消息</a>
			<a class="li" href="contact">線上預約</a>
			<a class="li" href="https://www.facebook.com/DragonHealthcare?skip_nax_wizard=true&ref_type=bookmark" target="_blank">facebook</a>
		</div>	
	</div>
	<div class="wrap_shadow"></div>
	<div class="wrap">
	