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
	<div class="center_area">
		<div class="top_title_box">
			<div class="title">
				<img src="app/img/index/sketch_light.gif" class="sketch_light">
				<h1>聯絡我們</h1>
			</div>
			<div class="sketch_grass">
				<img src="app/img/index/sketch_grass2.gif">
			</div>
		</div>
		<div class="icon_box">
			<div class="box">
				<div class="pic">
					<img src="app/img/contact/icon01.png">
				</div>
				<p>台北市中山區錦州街296號</p>
			</div>
			<div class="box">
				<div class="pic">
					<img src="app/img/contact/icon02.png">
				</div>
				<p>(02) 2517-9979</p>
			</div>
			<div class="box">
				<div class="pic">
					<img src="app/img/contact/icon03.png">
				</div>
				<p>12:00～21:00 </p>
			</div>
		</div>
		<div class="text_box">
			<p>親愛的顧客：<br>
			感謝您瀏覽本公司網站，請詳細填寫以下表單並清楚告訴我們您的訴求，我們收到留言將會以最快速的速度與您聯絡，再次感謝您。</p>
		</div>
		<div class="form_map_box">
			
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
			<div class="phone_text_box">
				<p>親愛的顧客：<br>
				感謝您瀏覽本公司網站，請詳細填寫以下表單並清楚告訴我們您的訴求，我們收到留言將會以最快速的速度與您聯絡，再次感謝您。</p>
			</div>
			<div class="form">
				<form>
					<div class="box">
						<p>您的姓名</p>
						<input  class="input1">
					</div>
					<div class="box">
						<p>聯繫電話</p>
						<input  type="tel" class="input1"  placeholder="phone">
					</div>
					<div class="box">
						<p>電子郵件</p>
						<input  type="email" class="input1" placeholder="email">
					</div>
					<div class="textarea">
						<textarea name="content_Str"></textarea>
					</div>
					<div class="bottom_btn">
						<div class="submitLine">
							<input type="submit" value="送出">
						</div>
					</div>
				</form>
			</div>

		
		
		</div>
</div>	

<?=$temp['footer_bar']?>
<?=$temp['body_end']?>