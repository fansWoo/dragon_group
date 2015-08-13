<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['header_bar']?>
<link rel='stylesheet' id='contact-form-7-css'  href='http://www.goen-goen.co.jp/wp/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=4.1.2' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-lightbox-fancybox-front-css'  href='http://www.goen-goen.co.jp/wp/wp-content/plugins/responsive-lightbox/assets/fancybox/jquery.fancybox-1.3.4.css?ver=4.2.4' type='text/css' media='all' />
<link rel='stylesheet' id='twentytwelve-fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700&#038;subset=latin,latin-ext' type='text/css' media='all' />
<script type='text/javascript' src='http://www.goen-goen.co.jp/wp/wp-includes/js/jquery/jquery.js?ver=1.11.2'></script>
<script type='text/javascript' src='http://www.goen-goen.co.jp/wp/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript' src='http://www.goen-goen.co.jp/wp/wp-content/plugins/responsive-lightbox/assets/fancybox/jquery.fancybox-1.3.4.js?ver=4.2.4'></script>
<script src="app/js/aa.js"></script>
<script src="app/js/bb.js"></script>
<script src="app/js/cc.js"></script>
<script>
$(function(){
	$(document).scroll(function(){
		var window_width = $(window).width();

		var scroll_top = $(document).scrollTop();
		if(scroll_top == 0){
			$('.wrapMarketing, .wrapGraphic, .wrapProgram , .portfolio_box1 , .portfolio_box2 , .portfolio_box3 , .portfolio_box4 , #pic_move_pic1' ).removeClass('hover');
			$('.content1').addClass('hover');

		}
		if(window_width > 1024 && window_width < 1400){
			if(scroll_top > 4500 && scroll_top < 6500){
				$('.videoFixed').addClass('hover');
			}
			else if(scroll_top  < 4500){
				$('.videoFixed').removeClass('hover');
			}
			else if(scroll_top  > 6500){
				$('.videoFixed').removeClass('hover');
			}
			
			else if(scroll_top >= 1000 && scroll_top < 2000){
				$('.wrapMarketing').addClass('hover');
			}
			else if(scroll_top >= 2000 && scroll_top < 2500){
				$('.wrapGraphic').addClass('hover');
			}
			else if(scroll_top >= 2500 && scroll_top < 3100){
				$('.wrapProgram').addClass('hover');
			}
			else if(scroll_top >= 3100 && scroll_top < 4500){
				$('.portfolio_box1').addClass('hover');
			}
			else if(scroll_top >= 4500 && scroll_top < 5000 ){
				$('.portfolio_box2').addClass('hover');
			   
			}
			else if(scroll_top >= 5000 && scroll_top < 7500 ){
				$('.portfolio_box3').addClass('hover');
			   
			}
			else if(scroll_top >= 7500 && scroll_top < 8450 ){
				$('.portfolio_box4').addClass('hover');
			   
			}
			else if(scroll_top >= 8450 && scroll_top < 9400 ){
				$('#pic_move_pic1').addClass('hover');
			   
			}
			else if(scroll_top >= 9400 && scroll_top < 9900 ){
				$('#pic_move_pic2').addClass('hover');
			   
			}
			else if(scroll_top >= 9900 && scroll_top < 10400 ){
				$('#pic_move_pic3').addClass('hover');
			   
			}
			else if(scroll_top >= 10400 && scroll_top < 14050 ){
				$('#pic_move_pic4').addClass('hover');
			   
			}
		}
		if(window_width >= 1400){
		
		}
	});
	var window_height = $(window).height();
	$('.ff').css('height', window_height);
	$('.ff').css('height', window_height);
	$(window).resize(function(){
		var window_height = $(window).height();
		$('.ff').css('height', window_height);
		$(' .ff').css('height', window_height);
		
	});
	//if($(document).scrollTop() !== 0)
	//{
		//$(document).scrollTop(0);
		//location.href = 'page/index';
	//}
	$(document).scroll(function(){
        var scroll_top = $(document).scrollTop();
        var scroll_top_height = scroll_top;
		console.log(scroll_top);
		
		
		
		var content_bottom_top = $('.moveing_area').offset().top;
		var content_bottom_height_all = $('.moveing_area').heightAll();
		if(scroll_top == 0 )
        {

			
        }

		
		if(scroll_top_height >= content_bottom_top)
		{
			var s1 = (scroll_top_height - content_bottom_top) * 1.5;
			$('.moveing_area').addClass('hover');
			$('.moveing_area .content').css('transform', 'translate(-' + s1 + 'px, 0)');
			
		}

		
    });
});
</script>
<!--<script>
$(function(){
	var $worksMask = $('.circle-works__mask');
	var worksMaskTL = new TimelineMax({paused:true,repeat:-1});

	$('.circle-works__mask').each(function(idx,elm){
		var clsNum = Math.round(Math.random()*5)+1;//1〜6の整数
		//console.log(clsNum);
		$(elm).addClass('circle-works__mask'+clsNum);
	});

	worksMaskTL
		.set($worksMask,{backgroundPosition:'0 0'})//1
		.set($worksMask,{backgroundPosition:'0 -200px'},'+=0.125')//2
		.set($worksMask,{backgroundPosition:'0 -400px'},'+=0.125')//3
		.set($worksMask,{backgroundPosition:'0 -600px'},'+=0.125')//4
		.set($worksMask,{backgroundPosition:'0 -800px'},'+=0.125')//5
		.set($worksMask,{backgroundPosition:'0 -1000px'},'+=0.125')//6
		.set($worksMask,{backgroundPosition:'0 -1200px'},'+=0.125')//7
		.set($worksMask,{backgroundPosition:'0 -1400px'},'+=0.125')//8
		.set($worksMask,{backgroundPosition:'0 -1600px'},'+=0.125')//9
		.set($worksMask,{backgroundPosition:'0 -1800px'},'+=0.125')//10
		.set($worksMask,{backgroundPosition:'0 -2000px'},'+=0.125')//11
		.set($worksMask,{backgroundPosition:'0 -2200px'},'+=0.125')//12
		.set($worksMask,{backgroundPosition:'0 -2400px'},'+=0.125')//13
		.set($worksMask,{backgroundPosition:'0 -2600px'},'+=0.125')//14
		.set($worksMask,{backgroundPosition:'0 -2800px'},'+=0.125')//15
		.set($worksMask,{backgroundPosition:'0 -3000px'},'+=0.125')//16
		.set($worksMask,{backgroundPosition:'0 -3200px'},'+=0.125')//17
		.set($worksMask,{backgroundPosition:'0 -3400px'},'+=0.125')//18
		.set($worksMask,{backgroundPosition:'0 -3600px'},'+=0.125')//19
		.set($worksMask,{backgroundPosition:'0 -3800px'},'+=0.125')//20
		.set($worksMask,{backgroundPosition:'0 0'},'+=0.125');//1
	
	});
</script>
<div class="moveing_area">
	<div class="content one">
		
			<div class="circle-works__mask">
				<img src="app/img/index/dd.png">
			</div>
		
	</div>
	<div class="content two"></div>
	<div class="content three"></div>
	<div class="content four "></div>
	<div class="content five"></div>
</div>-->




<div id="container" class="container">
<div id="wrapper">

	<div id="extra-trg" class="extra-trg">
		<div class="extra-trg__hello"><div class="extra-trg__content"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/extra/txt_2015.png" alt="a happy new year 2015"></div></div>
		<div class="extra-trg__strap"></div>
	</div>

<h1 class="goen-hdr"><a href="http://www.goen-goen.co.jp">goen°</a></h1>
<!-- /#goen-hdr -->

<nav id="goen-gnav" class="goen-gnav">
	<div class="goen-gnav__bg"></div>
	<ul class="goen-gnav__list">
					<li class="goen-gnav__item goen-gnav__item--news"><a href="http://www.goen-goen.co.jp/news">news</a></li>
		
					<li class="goen-gnav__item goen-gnav__item--about"><a href="http://www.goen-goen.co.jp/about">about</a></li>
		
					<li class="goen-gnav__item goen-gnav__item--works"><a href="http://www.goen-goen.co.jp/works">works</a></li>
		
					<li class="goen-gnav__item goen-gnav__item--otayori"><a href="http://www.goen-goen.co.jp/otayori">otayori</a></li>
		
					<li class="goen-gnav__item goen-gnav__item--blog"><a href="http://www.goen-goen.co.jp/blog">blog</a></li>
				<li class="goen-gnav__item goen-gnav__item--monogoen"><a href="http://www.monogoen.jp/" target="_blank">mono°goen°</a></li>
	</ul>
	<button id="menu-trg" class="menu-trg">≡</button>
<!-- /#goen-gnav --></nav>






<!-- ////////// コンテンツここから /////////// -->
<div id="contents" class="contents">
<div class="circles">




	<div id="coin" class="circle-coin"><a>goen°</a></div>
	<div id="thebu" class="circle-thebu"><span><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/img_thebu.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/img_thebu_sp.png" alt="thebu"></span></div>
	<div class="circle-movie"><a href="#movie" class="noscrl"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/item_movie.gif" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_movie_sp.png" alt="goen°ムービー"></a></div>



	<!-- //MENU// -->
	<ul class="circle-menu">
		<li class="circle-menu__item circle-menu__item--about">
			<a href="http://www.goen-goen.co.jp/about/">
				<img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_about_bg.png" alt="" class="bg">
				<img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_about.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_about_sp.png" alt="about" class="txt">
			</a>
		</li>
		<li class="circle-menu__item circle-menu__item--works"><a href="http://www.goen-goen.co.jp/works/"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_works_bg.png" alt="" class="bg"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_works.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_works_sp.png" alt="works" class="txt"></a></li>
		<li class="circle-menu__item circle-menu__item--otayori"><a href="http://www.goen-goen.co.jp/otayori/"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_otayori_bg.png" alt="" class="bg"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_otayori.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_otayori_sp.png" alt="otayori" class="txt"></a></li>
		<li class="circle-menu__item circle-menu__item--blog"><a href="http://www.goen-goen.co.jp/blog/"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_blog_bg.png" alt="" class="bg"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_blog.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_blog_sp.png" alt="blog" class="txt"></a></li>
		<li class="circle-menu__item circle-menu__item--monogoen"><a href="http://www.monogoen.jp/" target="_blank"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_monogoen_bg.png" alt="" class="bg"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_monogoen.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_monogoen_sp.png" alt="mono°goen°" class="txt"></a></li>
		<li class="circle-menu__item circle-menu__item--coen"><a href="http://www.goen-goen.co.jp/coen/"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_coen_bg.png" alt="" class="bg"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_coen.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_coen_sp.png" alt="coen°" class="txt"></a></li>
		<li class="circle-menu__item circle-menu__item--supergoen"><a href="http://www.goen-goen.co.jp/supergoen/"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_supergoen_bg.png" alt="" class="bg"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_supergoen.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/btn_supergoen_sp.png" alt="super goen°" class="txt"></a></li>
	<!-- /.circle-menu --></ul>



	<!-- //WORKS// -->
	<ul class="circle-works">
					
			
									
											<li class="circle-works__item circle-works__item--w2 is-new">
												<a href="works/nb-me">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/07/6ca85f18eba7ef44e7c239747edd2520-e1435847208792-624x624.jpg" class="attachment-post-thumbnail wp-post-image" alt="☆IMG_0914" />								<span class="circle-works__mask"></span>
								<span class="circle__new"></span>							</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w3 is-new">
												<a href="works/ehon-ohanashinoha">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/07/66224ef1dbdb938e51225c4f60875f08-624x624.jpg" class="attachment-post-thumbnail wp-post-image" alt="表紙" />								<span class="circle-works__mask"></span>
								<span class="circle__new"></span>							</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w4">
												<a href="works/ex-mo-01">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/04/22a00c5a9c2499f51efd9d3b24eb6f95-624x624.jpg" class="attachment-post-thumbnail wp-post-image" alt="森本_ビジネス本" />								<span class="circle-works__mask"></span>
															</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w5">
												<a href="works/hd-webcm">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/07/0000001hgd.png" class="attachment-post-thumbnail wp-post-image" alt="0000001hgd" />								<span class="circle-works__mask"></span>
															</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w6">
												<a href="works/c-on-02-a">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2014/12/ID_00110.jpg" class="attachment-post-thumbnail wp-post-image" alt="ID_00" />								<span class="circle-works__mask"></span>
															</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w7">
												<a href="works/u-01">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/03/000.jpg" class="attachment-post-thumbnail wp-post-image" alt="000" />								<span class="circle-works__mask"></span>
															</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w8">
												<a href="works/jv-01">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/04/JV_01-624x622.jpg" class="attachment-post-thumbnail wp-post-image" alt="JV_01" />								<span class="circle-works__mask"></span>
															</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w9">
												<a href="works/m-sa2-07">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2014/12/ID_0046.jpg" class="attachment-post-thumbnail wp-post-image" alt="ID_00" />								<span class="circle-works__mask"></span>
															</a>
						</li>
									
											<li class="circle-works__item circle-works__item--w10 is-new">
												<a href="works/iphone6-gpp">
								<img src="http://www.goen-goen.co.jp/wp/wp-content/uploads/2015/07/IMGP5141-e1435849614241-624x624.jpg" class="attachment-post-thumbnail wp-post-image" alt="IMGP5141" />								<span class="circle-works__mask"></span>
								<span class="circle__new"></span>							</a>
						</li>
				
									<!-- /.circle-works --></ul>
	


	<!-- //NEWS// -->
	<section class="news">
		<h2 class="news__ttl"><img src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/ttl_news.png" data-sp-src="http://www.goen-goen.co.jp/wp/wp-content/themes/goen/img/top/ttl_news_sp.png" alt="NEWS"></h2>

		
			<article class="news__item is-active">
						<header>
				<time datetime="2015-08-03"><span>
					2015.08.03				</span></time>
				<h3 class="news__hdl"><span>
					【産休のお知らせ】スタッフよりご挨拶。				</span></h3>
			</header>
				<div class="news__body">
					<p><span>
						この度、ついに森本は臨月を迎えました。
ついては先月からすでに産休に入っておりますが、
ここから"完全に"産休とさせ...					</span></p>
				</div>
			</article>
		
			<article class="news__item">
						<header>
				<time datetime="2015-08-02"><span>
					2015.08.02				</span></time>
				<h3 class="news__hdl"><span>
					【森本千絵掲載誌情報】ANA機内誌「翼の王国」				</span></h3>
			</header>
				<div class="news__body">
					<p><span>
						現在ANAの機内誌「翼の王国」8月号にて、
森本千絵の旅のお話が掲載されております。

ANAの飛行機に乗られる方...					</span></p>
				</div>
			</article>
		
			<article class="news__item">
						<header>
				<time datetime="2015-08-01"><span>
					2015.08.01				</span></time>
				<h3 class="news__hdl"><span>
					【杉養蜂園ブランディング】リニューアル店舗第一号、開店！				</span></h3>
			</header>
				<div class="news__body">
					<p><span>
						本日、ブランディングで関わらせていただいている杉養蜂園さんの
リニューアル店舗第一号、鎌倉店がオープンしました！

...					</span></p>
				</div>
			</article>
		
		<div class="news__detail"><a href="http://www.goen-goen.co.jp/news/">more</a></div>
	</section>
	


	<!-- //SNS// -->
	<ul class="circle-sns">
		<li id="fbbtn" class="circle-sns__item circle-sns__item--facebook"><a href="https://ja-jp.facebook.com/pages/goen/180693808661054" target="_blank">facebook</a></li>
		<li id="twbtn" class="circle-sns__item circle-sns__item--twitter"><a href="https://twitter.com/goen_staff" target="_blank">twitter</a></li>
		<li id="isbtn" class="circle-sns__item circle-sns__item--instagram"><a href="http://instagram.com/thebu__" target="_blank">instagram</a></li>
	<!-- /.circle-sns --></ul>



<!-- /.circles --></div>
<!-- /#contents.contents --></div>
<!-- ////////// コンテンツここまで /////////// -->


<div class="push"></div>
<!-- /#wrapper --></div>

<footer id="goen-ftr" class="goen-ftr">
	<div class="goen-ftr__body">
		<div id="pagetop" class="pagetop"><a href="#top">page top</a></div>
		<aside class="ftr-sns">
			<p class="ftr-sns__txt">FOLLOW US</p>
			<ul class="ftr-sns__list">
				<li class="ftr-sns__item ftr-sns__item--facebook"><a href="https://ja-jp.facebook.com/pages/goen/180693808661054" target="_blank">facebook</a></li>
				<li class="ftr-sns__item ftr-sns__item--twitter"><a href="https://twitter.com/goen_staff" target="_blank">twitter</a></li>
				<li class="ftr-sns__item ftr-sns__item--instagram"><a href="http://instagram.com/thebu__" target="_blank">instagram</a></li>
			</ul>
		<!-- /.sns --></aside>
		<div id="contact-trg" class="contact-trg"><a href="#contact" class="noscrl">contact</a></div>
		<section id="contact" class="contact">
			<h2 class="contact__ttl">contact</h2>
			<p class="contact__txt">お仕事のご依頼・その他のお問い合わせはこちら</p>

			<!-- ウィジェット -->
							<aside id="text-2" class="widget widget_text">			<div class="textwidget"><div role="form" class="wpcf7" id="wpcf7-f4-o1" lang="ja" dir="ltr">
<div class="screen-reader-response"></div>
<form name="" action="/#wpcf7-f4-o1" method="post" class="wpcf7-form" novalidate="novalidate">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="4" />
<input type="hidden" name="_wpcf7_version" value="4.1.2" />
<input type="hidden" name="_wpcf7_locale" value="ja" />
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f4-o1" />
<input type="hidden" name="_wpnonce" value="edd797ea77" />
</div>
<div class="contact__body">
<div class="contact__wrap contact__wrap--data">
<div class="contact__item contact__item--name">
<label for="name" class="contact__label">name</label><br />
<span class="wpcf7-form-control-wrap name"><input type="text" name="name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" id="name" aria-required="true" aria-invalid="false" /></span>
</div>
<div class="contact__item contact__item--tel">
<label for="tel" class="contact__label">tel</label><br />
<span class="wpcf7-form-control-wrap tel"><input type="text" name="tel" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" id="tel" aria-required="true" aria-invalid="false" /></span>
</div>
<div class="contact__item contact__item--mail">
<label for="mail" class="contact__label">mail</label><br />
<span class="wpcf7-form-control-wrap mail"><input type="text" name="mail" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" id="mail" aria-required="true" aria-invalid="false" /></span>
</div>
<div class="contact__item contact__item--title">
<label for="title" class="contact__label">title</label><br />
<span class="wpcf7-form-control-wrap title"><select name="title" class="wpcf7-form-control wpcf7-select" id="title" aria-invalid="false"><option value="">---</option><option value="お仕事のご依頼・ご相談">お仕事のご依頼・ご相談</option><option value="メディア掲載について">メディア掲載について</option><option value="その他のお問い合わせ">その他のお問い合わせ</option></select></span>
</div>
</div>
<div class="contact__wrap contact__wrap--content">
<div class="contact__item contact__item--msg">
<label for="msg" class="contact__label">message</label><br />
 <span class="wpcf7-form-control-wrap msg"><textarea name="msg" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required" id="msg" aria-required="true" aria-invalid="false"></textarea></span>
</div>
</div>
<div class="contact__wrap contact__wrap--btn">
<input type="submit" value="送信" class="wpcf7-form-control wpcf7-submit" />
</div>
</div>
<div class="wpcf7-response-output wpcf7-display-none"></div></form></div></div>
		</aside>			
			<div class="contact__alternate">
				<p class="contact__notice">フォームがご利用いただけない場合は、恐れ入りますが下記連絡先まで直接お問い合わせください。</p>
				<address class="contact__address">
					<span class="contact__tel">tel. <a href="tel:0357525150">03-5752-5150</a></span> / <span class="contact__mail">mail. <a href="mailto:&#103;&#111;&#101;&#110;&#64;&#103;&#111;&#101;&#110;&#45;&#103;&#111;&#101;&#110;&#46;&#99;&#111;&#46;&#106;&#112;">&#103;&#111;&#101;&#110;&#64;&#103;&#111;&#101;&#110;&#45;&#103;&#111;&#101;&#110;&#46;&#99;&#111;&#46;&#106;&#112;</a></span>
				</address>
			<!-- /.contact__alternate --></div>
			<a class="contact__close"></a>
		<!-- /#contact --></section>
		<p class="copyright"><small>Copyright &copy; goen° All Rights Reserved.</small></p>
	<!-- /.goen-ftr__body --></div>
<!-- /#goen-ftr --></footer>
<!-- /.container --></div>




















<?=$temp['footer_bar']?>
<?=$temp['body_end']?>