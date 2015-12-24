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
	
	$(".left_area .nav .father").click(function() {
		$(this).toggleClass("active");
		$(this).children(".child_area").slideToggle();
		
	});
	$(" .phone_nav  .hide_box ").hide()
	$(" .phone_nav .phone_father ").click(function() {
		$(this).toggleClass("active");
		$(" .phone_nav  .hide_box ").slideToggle();
	});
});
</script>
<div class="top_banner_box">
	<div class="text_box">	
		<h2>用我們專業打造美麗的你。</h2>
		<h2>With our professional build beautiful you.</h2>
	</div>	
</div>
<div class="content01">
	<div class="shadow_bg"></div>
	<div class="center_area">
		<img src="app/img/about/lime_long_left.png" class="line left">
		<img src="app/img/about/lime_long_right.png" class="line right">
		<img src="app/img/about/line_short_top.png" class="line top">
		<img src="app/img/about/line_short_bottom.png" class="line bottom">
		<img src="app/img/about/title.png" class="big_title">
		<div class="title_box">
			<div class="center">
				<img src="app/img/about/pic01.png">
				服務精神
				<img src="app/img/about/pic01.png">
			</div>
		</div>	
		<div class="text_box">
			<p>我們秉持著關懷的心與專業的技術，著重身心靈協調的龍安診所,備有家醫科、美容醫學，由受專業訓練的醫師，給您需要的服務,醫學美容幫助您擁有美力的外表,恢復您的信心，
			<br><br>
			龍安診所幫助所有的民眾，身心靈內在與外在需要加強補足的地方,長期下來不斷照護著中正地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫生來為大家服務，提供多元化的醫療檢查，歡迎大家多多利用，
			<br><br>
			期許龍安診所的出現，可以帶給大家更美好的樂活人生，打造自信美，追求身心靈協調的樂活主張。</p>
		</div>
		<div class="contact_box">
			<div class="title">交通指南</div>
			<div class="box" style="border:none;">
				<img src="app/img/index/icon01.png">
				<div class="text">
					<p>台北市中山區錦州街296號</p>
					<p>行天宮站3號出口 步行約5分鐘</p>
				</div>
			</div>
			<div class="box" >
				<img src="app/img/index/icon02.png">
				<div class="text">	
					<p>(02) 2517-9979</p>
				</div>
			</div>
			<div class="box">
				<img src="app/img/index/icon03.png">
				<div class="text">		
					<p>12:00～21:00 </p>
				</div>	
			</div>
		</div>
		<div class="map_box">
			<img src="app/img/about/map.png">
		</div>
		
		<div id="map"></div>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<script type="text/javascript">
            // When the window has finished loading create our google map below
            google.maps.event.addDomListener(window, 'load', init);
        
            function init() {
                // Basic options for a simple Google Map
                // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
                var mapOptions = {
                    // How zoomed in you want the map to start at (always required)
                    zoom: 14,

                    // The latitude and longitude to center the map (always required)
                    center: new google.maps.LatLng(25.0602214,121.5359145), // New York

                    // How you would like to style the map. 
                    // This is where you would paste any style found on Snazzy Maps.
                    styles: [	{		"featureType":"landscape",		"stylers":[			{				"hue":"#FFBB00"			},			{				"saturation":43.400000000000006			},			{				"lightness":37.599999999999994			},			{				"gamma":1			}		]	},	{		"featureType":"road.highway",		"stylers":[			{				"hue":"#FFC200"			},			{				"saturation":-61.8			},			{				"lightness":45.599999999999994			},			{				"gamma":1			}		]	},	{		"featureType":"road.arterial",		"stylers":[			{				"hue":"#FF0300"			},			{				"saturation":-100			},			{				"lightness":51.19999999999999			},			{				"gamma":1			}		]	},	{		"featureType":"road.local",		"stylers":[			{				"hue":"#FF0300"			},			{				"saturation":-100			},			{				"lightness":52			},			{				"gamma":1			}		]	},	{		"featureType":"water",		"stylers":[			{				"hue":"#0078FF"			},			{				"saturation":-13.200000000000003			},			{				"lightness":2.4000000000000057			},			{				"gamma":1			}		]	},	{		"featureType":"poi",		"stylers":[			{				"hue":"#ffb400"			},			{				"saturation":-1.0989010989011234			},			{				"lightness":11.200000000000017			},			{				"gamma":1			}		]	}]
                };

                // Get the HTML DOM element that will contain your map 
                // We are using a div with id="map" seen below in the <body>
                var mapElement = document.getElementById('map');

                // Create the Google Map using our element and options defined above
                var map = new google.maps.Map(mapElement, mapOptions);

                // Let's also add a marker while we're at it
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(25.0602214,121.5359145),
                    map: map,
                    title: 'Snazzy!'
                });
            }
        </script>
		
	</div>
</div>	

<?=$temp['footer_bar']?>
<?=$temp['body_end']?>