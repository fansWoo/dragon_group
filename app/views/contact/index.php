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
			<?=form_open("contact/contact_post")?>
				<div class="pp">*為必填項目</div>
				<div class="box one">
					<div class="item">
						<p>姓名/姓別<span>*</span></p>
						<input class="input1" name="username_Str" placeholder="name" required>
					</div>
					<div class="circle_box">
						<div>
							<input type="radio" id="male" value="1" name="sex_status_Num" required>
							<label for="male">先生</label>
						</div>
						<div>
							<input type="radio" id="female" value="2" name="sex_status_Num">
							<label for="female">小姐</label>
						</div>
					</div>	
				</div>
				<div class="box two">
					<p>療程項目<span>*</span></p>
					<select class="LiSelect" name="classtype_Str" required>
						<?foreach($ShowpieceList->obj_Arr as $key => $value_showpiece):?>
							<option value="<?=$value_showpiece->name_Str?>"><?=$value_showpiece->name_Str?></option>
						<?endforeach?>
					</select>
				</div>
				<div class="box">
					<p>手機號碼</p>
					<input type="text" class="input1" name="phone_Str" placeholder="phone">
				</div>
				<div class="box">
					<p>電子信箱<span>*</span></p>
					<input type="email" class="input1" name="email_Str" placeholder="email" required>
				</div>
				<div class="box one type_2">
					<p>就診紀錄 <span>*</span></p>
					<div class="circle_box">
						<div>
							<input type="radio" id="first_visit" value="1" name="visit_status_Num" required>
							<label for="first_visit">初診</label>
						</div>
						<div>
							<input type="radio" id="return_visit" value="2" name="visit_status_Num">
							<label for="return_visit">複診</label>
						</div>
					</div>	
				</div>
				<div class="textarea">
					<textarea name="content_Str" style="resize: none;" placeholder="content" required></textarea>
				</div>
				<div class="bottom_btn">
					<div class="submitLine">
						<input type="submit" value="送出">
					</div>
					<div class="check">
						<input type="checkbox" name="agree_personal_data_status_Num" value="1" required>
						<p>同意提供個人資料作為諮詢通知範圍內之蒐集、處理及利用</p>
					</div>
				</div>
			</form>
			</div>	
		</div>	
		<img src="app/img/contact/pic01.png" class="pic01">
		<img src="app/img/contact/people.png" class="people">
	</div>
	
</div>	
<?=$temp['footer_bar']?>
<?=$temp['body_end']?>