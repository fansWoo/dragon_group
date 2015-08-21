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

			if(scroll_top == 0){
				$('#content_one , #content_two , #content_three , #content_four ').removeClass('hover');

			}
	
			if(scroll_top >= 300 && scroll_top < 800){
				$('#content_one').addClass('hover');
				$('#content_two').removeClass('hover');
			}
			else if(scroll_top >= 800 && scroll_top < 1500){
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
	});
	$(' #content_four a[href^=#]').click(function () {
		var speed = 500;
		var href = $(this).attr("href");
		var target = $(href == "#content_one" || href == " #content_one " ? 'html' : href);
		var position = target.offset().top;
		$("html , body").animate({scrollTop: position}, speed, "swing");
			return false;
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

			var scroll_top = $(document).scrollTop();
			var scroll_top_height = scroll_top;
			console.log(scroll_top);
			var content_bottom_top = $('.scroll_area').offset().top;
			var content_bottom_height_all = $('.scroll_area').heightAll();
			
			if(scroll_top_height >= content_bottom_top)
			{
				var s1 = (scroll_top_height - content_bottom_top) * 1.5;
				var p7 = (scroll_top_height - content_bottom_top) / 1 ;
				var p8 = (scroll_top_height - content_bottom_top) * 0.15 ;
				
				$('.scroll_area').addClass('hover');
				$('.scroll_area .content').css('transform', 'translate(-' + s1 + 'px, 0)');
				$('#content_three .plan').css('transform', 'translateY(+' + p8 + 'px) translateX(+' + p7  + 'px) rotate(-15deg)');
			}
			
			var content_bottom_top = $('#content_two').offset().top;
			var content_bottom_height_all = $(content_two).heightAll();
			if(scroll_top_height >= content_bottom_top)
			{
			
				var p7 = (scroll_top_height - content_bottom_top) / 1 ;
				var p8 = (scroll_top_height - content_bottom_top) * 0.15 ;
				
				$('#content_two .bus').css('transform', 'translateY(+' + p8 + 'px) translateX(+' + p7  + 'px) rotate(-15deg)');
			}
		
		}
    });
});
</script>
<script src="js/test/jquery-1.11.2.min.js"></script>
<script src="js/test/jquery.transit.min.js"></script>
<script src="js/test/jquery.easing.1.3.min.js"></script>
<script src="js/test/util.min.js"></script>
<script src="js/test/main.min.js"></script>
<script src="js/test/func.min.js"></script>

<div class="scroll_area">
	<div class="content one"  id="content_one">
		<div></div>
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
			<h1>引人注目的廣告文案</h1>
			<h2>引人注目的廣告文案廣告文案，
			的廣告文案廣告文案，
			廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案廣告文案廣告。</h2>
			<h2>引人注目的廣告文案廣告文案，
			的廣告文案廣告文案，
			廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案。</h2>
			<img src="app/img/index/sign.png" class="sign">
			<p>院長　簡凱偉</p>
			
		</div>
		<div class="right_text_box">
			<div class="title_box">
				<img src="app/img/index/logo01.png" class="logo">
				<h3>龍安診所</h3>
			</div>
			<p>請提供診所服務項目介紹或溫馨動人的小故事。請提供診所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
			<p>請提供診所服務項目、溫馨動人</p>
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
					<p>如何愛自己？</p>
					<h4>傾聽身體的聲音<br>及時就診檢查</h4>
					<h5>〉〉〉</h5>
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
		<div class="bus_box">
			<img src="app/img/index/bus.png" class="bus">
			<img src="app/img/index/bus2.png" class="bus2">
		</div>
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
				<h3>啟美藥局</h3>
			</div>
			<p>請提供診所服務項目介紹或溫馨動人的小故事。請提供診所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
			<p>請提供診所服務項目、溫馨動人</p>
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
					<p>如何愛自己？</p>
					<h4>遵守醫生指示<br> 正確服藥</h4>
					<h5>〉〉〉</h5>
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
				<h3>亞欣醫美診所</h3>
			</div>
			<p>請提供診所服務項目介紹或溫馨動人的小故事。請提供診所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
			<div class="icon_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
					<p>如何愛自己？</p>
					<h4>遵守醫生指示<br> 正確服藥</h4>
					<h5>〉〉〉</h5>
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
		<a href="#content_one" class="arrow">
			<div></div>
		</a>
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
			<p>請提供診所服務項目介紹或溫馨動人的小故事。請提供診所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
			<p>請提供診所服務項目、溫馨動人請提供診所服務項目介紹或溫馨動人的小故事。溫馨動人的小故事，</p>
		</div>
		<div class="icon_box">
			<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
			<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
			<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
					<p>如何愛自己？</p>
					<h4>遵守醫生指示<br> 正確服藥</h4>
					<h5>〉〉〉</h5>
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
	<div class="nav">
		<a href="" class="li">關於龍安</a>
		<a href="" class="li">最新消息</a>
		<a href="" class="li">聯繫我們</a>
	</div>
	<div class="phone_content1"> 
		<div class="text">
			<h1>引人注目的廣告文案</h1>
			<h2>引人注目的廣告文案廣告文案，的廣告文案廣告文案，廣告文案、廣告文案、廣告文案，的廣告文案廣的廣告文案廣告文案廣告。</h2>
		
			<h2>廣告文案、廣告文案、廣告文案，廣告文案，的廣告文案廣告文案廣告。的廣告文案廣告文案廣告。廣告文案、廣告文案，的廣
			告文案廣告文案廣告。</h2>
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
				<p>所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人請提供診所服務項目介紹或溫馨動人</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街296號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-9979</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
				<h3>啟美藥局</h3>
				<p>所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人請提供診所服務項目介紹或溫馨動人診所服務</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區錦州街282號</p>
				<p><img src="app/img/index/icon02.png">(02) 2517-8032</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
				<h3>亞欣醫美診所</h3>
				<p>所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區民生東路一段14號2樓</p>
				<p><img src="app/img/index/icon02.png">(02) 2581-3030</p>
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
			<a href="" class="enter">
				<img src="app/img/index/hover_text.png">
			</a>
		</div>
		<div class="text_area">
			<div class="left_text_box">
				<h3>USIES </h3>
				<p>所服務項目、溫馨動人，請提供診所服務項目介紹或溫馨動人</p>
			</div>
			<div class="line"></div>
			<div class="right_text_box">
				<p><img src="app/img/index/icon01.png">台北市中山區民生東路一段14號2樓</p>
				<p><img src="app/img/index/icon02.png">(02) 2581-3030</p>
				<p><img src="app/img/index/icon03.png">12:00～21:00  </p>
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
				<p><a href="">亞欣醫美診所</a></p>
			</div>
			<div class="footer_li">
				<p><a href="">USIES</a></p>
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