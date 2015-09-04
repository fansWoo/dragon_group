<?=$temp['header_up']?>
<?=$temp['header_down']?>
<?=$temp['header_bar']?>
<script src="app/js/smooth_scrollerator.js"></script>
<script>
$(function(){
	$(document).scroll(function(){
		var window_width = $(window).width();
		var scroll_top = $(document).scrollTop();
		$('.opacity0_coverbg').css('display', 'block');
		setTimeout(function(){
			if(scroll_top == $(document).scrollTop())
			{
				$('.opacity0_coverbg').css('display', 'none');
			}
		}, 500);
		if(window_width > 450 && window_width <= 1400){

			if(scroll_top == 0){
				$('#content_one , #content_two , #content_three , #content_four ').removeClass('hover');

			}
	
			if(scroll_top >= 300 && scroll_top < 700){
				$('#content_one').addClass('hover');
				$('#content_two').removeClass('hover');
				
				
			}
			if(scroll_top >= 700 && scroll_top < 1500){
				
					$('#content_two').addClass('hover');
				
			}
			else if(scroll_top >= 1500 && scroll_top < 3100){
				$('#content_three').addClass('hover');
				$('#content_two').removeClass('hover');
				
				
			}
			else if(scroll_top >= 3100 && scroll_top < 4500){
				$('#content_four').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 4500 && scroll_top < 5000 ){
				$('#content_two').removeClass('hover');
			   
			}
			
		}
		if(window_width >= 1400){
			
			if(scroll_top == 0){
				$('#content_one , #content_two , #content_three , #content_four ').removeClass('hover');

			}
	
			if(scroll_top >= 300 && scroll_top < 600){
				$('#content_one').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 600 && scroll_top < 2000){
				$('#content_two').addClass('hover');
				
			}
			else if(scroll_top >= 2000 && scroll_top < 3800){
				$('#content_three').addClass('hover');
				$('#content_two').removeClass('hover');
				
			}
			else if(scroll_top >= 3800 && scroll_top < 4800){
				$('#content_four').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 4800 && scroll_top < 8000 ){
				$('#content_two').removeClass('hover');
			   
			}
			
		
		}
		if(scroll_top == 0){
			
			$('.fixed_arrow_left').removeClass('hover');	
		}
		else if(scroll_top >= 300){
			
			$('.fixed_arrow_left').addClass('hover');	
		}
		
		
		if( scroll_top < 1500){
			
			$('.fixed_arrow_right').removeClass('hover');	
		}
		else if(scroll_top > 1500){
			
			$('.fixed_arrow_right').addClass('hover');	
		}
	});
	$('.fixed_arrow_right').click(function () {
		console.log($(document).scrollTop());
		if($(document).scrollTop() == 0)
		{
			$("html , body").animate({scrollTop: 500}, 1000, "swing");
			
		}
		else if($(document).scrollTop() >= 500 && $(document).scrollTop() < 1000)
		{
			$("html , body").animate({scrollTop: 1000}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 1000 && $(document).scrollTop() < 1500)
		{
			console.log('h');
			$("html , body").animate({scrollTop: 1500}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 1500 && $(document).scrollTop() < 2000)
		{
			$("html , body").animate({scrollTop: 2000}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 2000 && $(document).scrollTop() < 2500)
		{
			$("html , body").animate({scrollTop: 2500}, 1000, "swing");
		}
	});
	$('.fixed_arrow_left').click(function () {
		console.log($(document).scrollTop());
		if($(document).scrollTop() == 0)
		{
			$("html , body").animate({scrollTop: 0}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 500 && $(document).scrollTop() < 1000)
		{
			$("html , body").animate({scrollTop: 0}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 1000 && $(document).scrollTop() < 1500)
		{
			console.log('h');
			$("html , body").animate({scrollTop: 500}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 1300 && $(document).scrollTop() < 2000)
		{
			$("html , body").animate({scrollTop: 1000}, 1000, "swing");
		}
		else if($(document).scrollTop() >= 2000 && $(document).scrollTop() < 2500)
		{
			$("html , body").animate({scrollTop: 1500}, 1000, "swing");
		}
	});
	$(document).on('mouseenter', ' .big_pic_box  ', function(){
		$(this).addClass('hover');

	});
	$(document).on('mouseleave', ' .big_pic_box  ', function(){
		$(this).removeClass('hover');
	});
	//if($(document).scrollTop() !== 0)
	//{
		//$(document).scrollTop(0);
		//location.href = 'page/index';
	//}

	$(document).scroll(function(){
		var window_width = $(window).width();
		var scroll_top = $(document).scrollTop();	
		if(window_width > 450){

			var scroll_top_height = scroll_top;
			var content_bottom_top = $('.scroll_area').offset().top;
			var content_bottom_height_all = $('.scroll_area').heightAll();
			
			if(scroll_top == 0)
			{
				$('#content_one .bus1').attr('data-status', 1);
				$('#content_two .bus2').attr('data-status', 1);
				$('#content_two .bus3').attr('data-status', 1);
			}
		
			if(scroll_top_height >= content_bottom_top)
			{
				var s1 = (scroll_top_height - content_bottom_top) * 1.5;
				var p7 = (scroll_top_height - content_bottom_top) / 1 ;
				var p8 = (scroll_top_height - content_bottom_top) * 0.15 ;
				var p9 = (scroll_top_height - content_bottom_top) / 0.9 ;
				var p10 = (scroll_top_height - content_bottom_top) / 0.9 ;
				var p11 = (scroll_top_height - content_bottom_top) / 0.8 ;
				
				$('.scroll_area .content').css('transform', 'translate(-' + s1 + 'px , 0)');
				$('#content_three .plan').css('transform', 'translateY(+' + p8 + 'px) translateX(+' + p7  + 'px) rotate(-15deg)');
		
				if(window_width >= 450 && window_width < 1400 ){	
				
					if(scroll_top >= 500 && scroll_top < 850 ){
						if( $('#content_one .bus1').attr('data-status') == 1 )
						{
							$('#content_one .bus1').attr('data-status', 2);
						}

						$('#content_one .bus1').css('transform', 'translateX(+' + p9  + 'px)');
		
					}
					else if(scroll_top >= 850 ){
						$('#content_one .bus1').attr('data-status', 3);

					}
					
					if(scroll_top >= 850 && scroll_top < 1190 )
					{
						if( $('#content_two .bus2').attr('data-status') == 1 )
						{
							$('#content_two .bus2').attr('data-status', 2);
						}
						
						$('#content_two .bus2').css('transform', 'translateY(-' +  p10  + 'px)');
		
					}
					else if(scroll_top >= 1190 ){
						$('#content_two .bus2').attr('data-status', 3);
					}
					
					if(scroll_top >= 1190 && scroll_top < 1590 ){
						if( $('#content_two .bus3').attr('data-status') == 1 )
						{
							$('#content_two .bus3').attr('data-status', 2);
						}
						$('#content_two .bus3').css('transform', 'translateX(+' +  p9  + 'px)');
		
					}
					else if(scroll_top >= 1590 ){
						$('#content_two .bus3').attr('data-status', 3);
					}
				
				}
				if(window_width >= 1400 ){	
				
					if(scroll_top >= 600 && scroll_top < 1050 ){
						
						$('#content_one .bus1').css('transform', 'translateX(+' + p9  + 'px)');
		
					}
					else if(scroll_top >= 1050 ){
						$('#content_one .bus1').css('display','none');	

					}
					
					if(scroll_top >= 1050 && scroll_top < 1370 ){
						
						$('#content_two .bus2').css('transform', 'translateY(-' +  p10  + 'px)');
		
					}
					else if(scroll_top >= 1370 ){
						$('#content_two .bus2').css('display','none');	
					}
					if(scroll_top >= 1370 && scroll_top < 1890 ){
						
						$('#content_two .bus3').css('transform', 'translateX(+' +  p9  + 'px)');
		
					}
					else if(scroll_top >= 1890 ){
						$('#content_two .bus3').css('display','none');	
					}
				
				}
			}
		}
    });
});
</script>
<div class="opacity0_coverbg"></div>
		<div class="fixed_arrow_right">
			<div></div>
		</div>
		<div class="fixed_arrow_left">
			<div></div>
		</div>
<div class="scroll_area">
	<div class="content one"  id="content_one">
		<img src="app/img/index/bus.gif" data-status="1" class="bus1">
		<div class="road">
			<img src="app/img/index/road01.png" >
			<p>錦州街</p>			
		</div>
		<div class="road2">
			<img src="app/img/index/road02.png" >
			<p>錦州街</p>	
			<p>錦州街</p>			
		</div>
		<div class="heart">
			<img src="app/img/index/heart.png" >
			<p>龍安集團 版權所有<br>
			© 2015 Dragon Healthcare Group</p>			
		</div>
		<div class="sketch_grass2">
			<img src="app/img/index/sketch_grass2.gif" >	
		</div>
		<div class="sketch_light one">
			<img src="app/img/index/sketch_light.gif" >	
		</div>
		<div class="sketch_light two">
			<img src="app/img/index/sketch_light.gif" >	
		</div>
		<div class="left_text_box">
			<img src="app/img/index/title.png" class="title">
			<img src="app/img/index/sign.png" class="sign">
			<p>院長　簡凱偉</p>
			
		</div>
		<div class="right_text_box">
			<div class="title_box">
				<img src="app/img/index/logo04.png" class="logo">
				<h3>龍安診所</h3>
			</div>
			<p>醫美權威簡凱偉醫師所帶領的龍安集團，從專診醫療服務到各領域的專門診所結合。目的不僅是要給消費者全方位的服務，更提供消費者完整、完美的照護。</p>
			
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號1樓</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">8:30～12:30  </p>
			</div>
		</div>
		<div class="big_pic_box">
			<a href="" class="orange_box">
				<div class="orange_circle">
					<img src="app/img/index/orange_circle.png" class="orange_pic">
					<img src="app/img/index/orange_circle_hover.png" class="hover_orange_pic">	
				</div>
				<div class="hover_text">
					<img src="app/img/index/hover_text.png" >
				</div>			
				<div class="text">
					<img src="app/img/index/circle_text01.png" >
				</div>
			</a>
			<img src="app/img/index/dotted_bg01.png" class="dotted_bg01">
			<div class="moveing_box">
				<div class="circle_dashed"></div>
				<div class="rotate_border_box">
					<div class="circle_border">
						<img src="app/img/index/bb.png" class="circle_border_pic">
						<img src="app/img/index/aa.png" class="img2">
						<img src="app/img/index/pic01.png" class="img">
						<div class="hover_box"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!------------------------------------------------------------------------------------>
	<div class="content two" id="content_two">
		<div class="road3">
			<img src="app/img/index/road031.png" >
			<p>松江路</p>
			<p>民生東路一段</p>				
		</div>
		
			
			<img src="app/img/index/bus2.gif" class="bus2" data-status="1">
			<img src="app/img/index/bus.gif" class="bus3" data-status="1">
		
		<div class="sketch_light one">
			<img src="app/img/index/sketch_light.gif" >	
		</div>
		<div class="cloudy">
			<img src="app/img/index/sketch_cloud2.gif" >	
		</div>
		<div class="sketch_grass1">
			<img src="app/img/index/sketch_grass1.gif" >	
		</div>
		<div class="right_text_box">
			<div class="title_box">
				<img src="app/img/index/logo01.png" class="logo">
				<h3>啟美藥師藥局</h3>
			</div>
			<p>本藥局為新式開架式複合式健保藥局，多年配置健保處方籤經驗及專業細心提供使用者各項藥品等注意事項，更有醫學美容保養品之專業諮詢!讓使用者美的健康! </p>
		
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街282號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-8032</p>
				<p><img src="app/img/index/icon03.png">09:00～21:30  </p>
			</div>
		</div>
		<div class="big_pic_box">
			<a href="" class="orange_box">
				<div class="orange_circle">
					<img src="app/img/index/orange_circle2.png" class="orange_pic">
					<img src="app/img/index/orange_circle2_hover.png" class="hover_orange_pic">	
				</div>
				<div class="hover_text">
					<img src="app/img/index/hover_text.png" >
				</div>			
				<div class="text">
					<img src="app/img/index/circle_text02.png" >
				</div>
			</a>
			<img src="app/img/index/dotted_bg02.png" class="dotted_bg02">
			<div class="moveing_box">
				<div class="circle_border">
					<img src="app/img/index/bb.png" class="circle_border_pic">
					<img src="app/img/index/aa.png" class="img2">
					<img src="app/img/index/pic02.png" class="img">
					<div class="hover_box"></div>
				</div>
			</div>
		</div>	
	</div>
	<!------------------------------------------------------------------------------------>
	<div class="content three" id="content_three">
		<div class="ground">
			<img src="app/img/index/map_taiwan.png" >	
		</div>
		<div class="sketch_sea">
			<img src="app/img/index/sketch_sea.gif" >	
		</div>
		<div class="plan">
			<img src="app/img/index/plan.png" >	
		</div>
		<div class="right_text_box">
			<div class="title_box">
				<img src="app/img/index/logo02.png" class="logo">
				<h3>亞欣醫美</h3>
			</div>
			<p>高端的醫療設備及專業細心的諮詢師，為您私人訂製您的完美比例。<br>
				無論是專業的肌膚保養或是醫學美容微整手術皆有多年的經驗及客戶的保證！<br>
				就是要您有最好的醫療體驗!</p>
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區民生東路一段14號2樓</p>
				<p><img src="app/img/index/icon02.png">(02) 2581 3030</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
			</div>
		</div>
		<div class="big_pic_box">
			<a href="http://www.yasin-beauty.com/" target="_blank" class="orange_box">
				<div class="orange_circle">
					<img src="app/img/index/orange_circle.png" class="orange_pic">
					<img src="app/img/index/orange_circle_hover.png" class="hover_orange_pic">	
				</div>
				<div class="hover_text">
					<img src="app/img/index/hover_text.png" >
				</div>			
				<div class="text">
					<img src="app/img/index/circle_text03.png" >
				</div>
			</a>
			<img src="app/img/index/dotted_bg02.png" class="dotted_bg02">
			<div class="moveing_box">
				<div class="circle_border">
					<img src="app/img/index/bb.png" class="circle_border_pic">
					<img src="app/img/index/aa.png" class="img2">
					<img src="app/img/index/pic03.png" class="img">
					<div class="hover_box"></div>
				</div>
			</div>
		</div>	
	</div>
	<!------------------------------------------------------------------------------------>
	<div class="content four " id="content_four">
	
		<div class="ground">
			<img src="app/img/index/map_china.png" >	
		</div>
		<div class="sketch_sea">
			<img src="app/img/index/sketch_sea.gif" >	
		</div>
		<div class="right_text_box">
			<div class="title_box">
				<img src="app/img/index/logo03.png" class="logo">
				<h3>USIES</h3>
			</div>
			<p>來自台灣的醫學美容概念保養品，成份控管以國家合格標準規定，更經過嚴格的檢驗審核!</p>
			<p>製成品質經由臨床證明保證產品耐受性及有效性!才是真正是合使用者的專業醫療保養品!</p>
		</div>
		<div class="icon_box">
			<p><img src="app/img/index/icon01.png">台灣省桃園市龜山區楓樹七街31號</p>
			<p><img src="app/img/index/icon02.png">(03) 3349-0033</p>
			<p><img src="app/img/index/icon03.png">9:00～18:00  </p>
		</div>
		<div class="big_pic_box">
			<a href="http://www.usies.com.tw/about.php?lang=tw"  target="_blank" class="orange_box">
				<div class="orange_circle">
					<img src="app/img/index/orange_circle2.png" class="orange_pic">
					<img src="app/img/index/orange_circle2_hover.png" class="hover_orange_pic">	
				</div>
				<div class="hover_text">
					<img src="app/img/index/hover_text.png" >
				</div>			
				<div class="text">
					<img src="app/img/index/circle_text04.png" >
				</div>
			</a>
			<img src="app/img/index/dotted_bg02.png" class="dotted_bg02">
			<div class="moveing_box">
				<div class="circle_border">
					<img src="app/img/index/bb.png" class="circle_border_pic">
					<img src="app/img/index/aa.png" class="img2">
					<img src="app/img/index/pic04.png" class="img">
					<div class="hover_box"></div>
				</div>
			</div>
		</div>	
	</div>

</div>


<!------------------------------手機板------------------------------------------------------>

<div class="phone_area">
	<!--<div class="nav">
		<a href="" class="li">關於龍安</a>
		<a href="" class="li">最新消息</a>
		<a href="" class="li">聯繫我們</a>
	</div>-->
	<div class="phone_content1"> 
		<div class="text">
			<img src="app/img/index/mobile/phone_title.png">
		</div>
		<div class="heart">
			<img src="app/img/index/heart.png" >	
		</div>
		<div class="sign_box">
			<p>院長　簡凱偉</p>
			<img src="app/img/index/sign.png" class="sign">
		</div>
	</div>
	<div class="phone_content2">
		<div class="top_title">
			<div class="border01"></div>
			<div class="border02"></div>
			<img src="app/img/index/mobile/text01.png">
		</div>
		<img src="app/img/index/sketch_grass1.gif"  class="sketch_grass1">	
		<img src="app/img/index/mobile/title01.png" class="title">
		<div class="pic_box">
			<img src="app/img/index/mobile/pic01.png" class="pic">
			<a href="" class="enter">
				<img src="app/img/index/hover_text.png">
			</a>
		</div>
		<div class="text_area">
			<div class="left_text_box">
				<h3>龍安診所</h3>
				<p>醫美權威簡凱偉醫師所帶領的龍安集團，從專診醫療服務到各領域的專門診所結合。目的不僅是要給消費者全方位的服務，更提供消費者完整、完美的照護。</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號1樓</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">8:30～12:30  </p>
			</div>
		</div>
	</div>
	<div class="phone_content3">
		<div class="top_title">
			<div class="border01"></div>
			<div class="border02"></div>
			<img src="app/img/index/mobile/text01.png">
		</div>
		<img src="app/img/index/sketch_cloud2.gif"  class="sketch_cloud2">	
		<img src="app/img/index/mobile/title02.png" class="title">
		<div class="pic_box">
			<img src="app/img/index/mobile/pic02.png" class="pic">
			<a href="" class="enter">
				<img src="app/img/index/hover_text.png">
			</a>
		</div>
		<div class="text_area">
			<div class="left_text_box">
				<h3>啟美藥師藥局</h3>
				<p>本藥局為新式開架式複合式健保藥局，多年配置健保處方籤經驗及專業細心提供使用者各項藥品等注意事項，更有醫學美容保養品之專業諮詢!讓使用者美的健康!</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街282號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-8032</p>
				<p><img src="app/img/index/icon03.png">09:00～21:30  </p>
			</div>
		</div>
	</div>
	<div class="phone_content4">
		<div class="top_title">
			<div class="border01"></div>
			<div class="border02"></div>
			<img src="app/img/index/mobile/text01.png">
		</div>
		<img src="app/img/index/sketch_light.gif"  class="sketch_light">	
		<img src="app/img/index/mobile/title03.png" class="title">
		<div class="pic_box">
			<img src="app/img/index/mobile/pic03.png" class="pic">
			<a href="" class="enter">
				<img src="app/img/index/hover_text.png">
			</a>
		</div>
		<div class="text_area">
			<div class="left_text_box">
				<h3>亞欣醫美</h3>
				<p>高端的醫療設備及專業細心的諮詢師，為您私人訂製您的完美比例。無論是專業的肌膚保養或是醫學美容微整手術皆有多年的經驗及客戶的保證！就是要您有最好的醫療體驗!</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區民生東路一段14號2樓</p>
				<p><img src="app/img/index/icon02.png">(02) 2581 3030</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
			</div>
		</div>
	</div>
	<div class="phone_content5">
		<div class="top_title">
			<div class="border01"></div>
			<div class="border02"></div>
			<img src="app/img/index/mobile/text01.png">
		</div>
		<img src="app/img/index/plan.png"  class="plan">	
		<img src="app/img/index/mobile/title04.png" class="title">
		<div class="pic_box">
			<img src="app/img/index/mobile/pic04.png" class="pic">
			<a href="http://www.usies.com.tw/about.php?lang=tw" target="_blank" class="enter">
				<img src="app/img/index/hover_text.png">
			</a>
		</div>
		<div class="text_area">
			<div class="left_text_box">
				<h3>USIES </h3>
				<p>來自台灣的醫學美容概念保養品，成份控管以國家合格標準規定，更經過嚴格的檢驗審核!
				製成品質經由臨床證明保證產品耐受性及有效性!才是真正是合使用者的專業醫療保養品!</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台灣省桃園市龜山區楓樹七街31號</p>
				<p><img src="app/img/index/icon02.png">(03) 3349-0033</p>
				<p><img src="app/img/index/icon03.png">9:00～18:00  </p>
			</div>
		</div>
	</div>
	<div class="footer_box">
		<img src="app/img/index/mobile/bg.png">
		<div class="footer_nav">
			<div class="footer_li">
				<p><a href="">龍安診所</a></p>
			</div>
			<div class="footer_li">
				<p><a href="">啟美藥局</a></p>
			</div>
			<div class="footer_li">
				<p><a href="http://www.yasin-beauty.com/" target="_blank">亞欣醫美診所</a></p>
			</div>
			<div class="footer_li">
				<p><a href="http://www.usies.com.tw/about.php?lang=tw" target="_blank">USIES</a></p>
			</div>
		</div>
		<div class="footer_bottom">
			<img src="app/img/index/mobile/footer_line.png">
			<p>龍安集團 版權所有<br>
			© 2015 Dragon Healthcare Group</p>
			<p>design by <span><a href="">fanswoo</a></span> </p>
		</div>
	</div>
</div>	

	
	
</div>
<div class="index_footer">
	<p>design by <a href="">fanswoo</a></p>
</div>	






<?=$temp['body_end']?>