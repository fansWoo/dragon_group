<script>
$('a[href^=#]').click(function () {
	var speed = 500;
	var href = $(this).attr("href");
	var target = $(href == "#" || href == "" ? 'html' : href);
	var position = target.offset().top;
	$("html, body").animate({scrollTop: position}, speed, "swing");
		return false;
});

</script>
<div class="body">
	<div class="header_bar">
		<div class="center">
			<div class="logo_logo"></div>
		</div>
	
	</div>
	<div class="header_bar_mobile">
		<h2 class="ui_title">fansWoo</h2>
		<div class="menu">
			<img src="app/img/menu.png">
		</div>
	</div>
	<div class="header_bar_mobile_content">
		<a href="<?=base_url()?>">首頁</a>
		<a href="admin">後台</a>
		<a href="user/logout">登出</a>
	</div>
	<div class="wrap_shadow"></div>
	<div class="wrap">
	