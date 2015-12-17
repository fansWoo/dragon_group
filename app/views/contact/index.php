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
<div class="content01">
	<div class="shadow_bg"></div>
	<div class="center_area">
		<div class="top_pic">
			<img src="app/img/index/sketch_grass2.gif">
		</div>
		<div class="title_box">
			<img src="app/img/contact/title.png">
		</div>
		<div class="left_box">
			<div class="form">
				<div class="pp">*為必填項目</div>
				<div class="box one">
					<div class="item">
						<p>姓名/姓別<span>*</span></p>
						<input  class="input1" name="username_Str" placeholder="name">
					</div>
					<div class="circle_box">
						<div>
							<input type="radio" id="male" value="male" name="sex_Str">
							<label for="male">先生</label>
						</div>
						<div>
							<input type="radio" id="female" value="female" name="sex_Str">
							<label for="female">小姐</label>
						</div>
					</div>	
				</div>
				<div class="box two">
					<p>療程項目<span>*</span></p>
					<select class="LiSelect" name="classtype_Str" required>
						<option value="">埋線拉提</option>
						<option value="Consumers">埋線拉提</option>
						<option value="Physicians">埋線拉提</option>
						<option value="Pharmaceutical Partners">埋線拉提</option>
						<option value="Distributors">埋線拉提</option>
					</select>
				</div>
				<div class="box">
					<p>手機號碼</p>
					<input  type="text" class="input1" name="email_Str" placeholder="phone">
				</div><div class="box">
					<p>電子信箱<span>*</span></p>
					<input  type="email" class="input1" name="email_Str" placeholder="email">
				</div>
				<div class="box one type_2">
					<p>就診紀錄 <span>*</span></p>
					<div class="circle_box">
						<div>
							<input type="radio" id="male" value="male" name="sex_Str">
							<label for="male">初診</label>
						</div>
						<div>
							<input type="radio" id="female" value="female" name="sex_Str">
							<label for="female">複診</label>
						</div>
					</div>	
				</div>
				<div class="textarea">
					<textarea name="content_Str" style="resize: none;" required></textarea>
				</div>
				<div class="bottom_btn">
					<div class="submitLine">
						<input type="submit" value="送出">
					</div>
					<div class="check">
						<input type="checkbox">
						<p>同意提供個人資料作為諮詢通知範圍內之蒐集、處理及利用</p>
					</div>
				</div>
			</div>	
		</div>	
		<img src="app/img/contact/pic01.png" class="pic01">
		<img src="app/img/contact/people.png" class="people">
	</div>
	
</div>	
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>