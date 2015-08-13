$(function(){
	//RWD寬度調整
	var window_width = $(window).width();
	var window_height = $(window).height();
	if(window_width < 450)
	{
		$('.wrap').css('height', (window_height - ( 50 + parseInt($('.wrap').css('margin-top')) + parseInt($('.wrap').css('margin-bottom')) + parseInt($('.wrap').css('padding-top')) + parseInt($('.wrap').css('padding-bottom') ) ) ) + 'px');
	}
});