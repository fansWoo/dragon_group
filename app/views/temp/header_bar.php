<script>
$(function(){
	
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
					<a class="button">關於我們</a>
					<div class="down_box">
						<?foreach($about_PageList->obj_Arr as $key => $value_PageList):?>
							<a href="page/<?=$value_PageList->slug_Str?>" class="button2"><?=$value_PageList->title_Str?></a>
						<?endforeach?>
						<!-- <a href="page/about" class="button2">了解龍安</a>
						<a href="page/about" class="button2">歷史沿革</a>
						<a href="page/about" class="button2" >合作夥伴</a> -->
					</div>
				</div>
				<div class="li"><a href="note" class="button">最新消息</a></div>
				<div class="li"><a href="page/<?=$value_PageList->slug_Str?>" class="button">服務項目</a></div>
				<div class="li"><a href="page/<?=$value_PageList->slug_Str?>" class="button">案例分享</a></div>
				<div class="li"><a href="contact" class="button">聯繫我們</a></div>
				<div class="li fb"><a href="https://www.facebook.com/DragonHealthcare?skip_nax_wizard=true&ref_type=bookmark" class="button fb"><img src="app/img/header/fb.png"></a></div>
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
		<a class="li" href="<?=base_url()?>">首頁</a>
		<div class="header_father_area">
			關於我們
			<div class="child_area">
				<?foreach($about_PageList->obj_Arr as $key => $value_PageList):?>
					<a href="page/<?=$value_PageList->slug_Str?>" class="button2"><?=$value_PageList->title_Str?></a>
				<?endforeach?>
				<!-- <a href="page/about">了解龍安</a>
				<a href="page/about">歷史沿革</a>
				<a href="page/about">合作夥伴</a> -->
			</div>
		</div>
		<a class="li" href="note">最新消息</a>
		<a class="li" href="page/<?=$value_PageList->slug_Str?>">服務項目</a>
		<a class="li" href="page/<?=$value_PageList->slug_Str?>">案例分享</a>
		<a class="li" href="contact">聯繫我們</a>
		<a class="li" href="https://www.facebook.com/DragonHealthcare?skip_nax_wizard=true&ref_type=bookmark">facebook</a>
		<!--<a class="li" href="admin">後台</a>
		<a class="li" href="user/logout">登出</a>-->
	</div>
	<div class="wrap_shadow"></div>
	<div class="wrap">
	