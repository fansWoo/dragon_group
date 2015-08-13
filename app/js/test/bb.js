(function ($){

//# IMGSRC.JS
//PC/スマホ画像切替<br>
//<img>タグの src に指定されたものがPC用、data-sp-src に指定されたものがスマホ用。<br>
//読み込み時にPCサイズだった場合は何もしないので、`max-width: 767px`の `match` で実行、`unmatch`で解除。
$(function() {

$('img[data-sp-src]').each(function(index,elm){
	var
	$img = $(elm),
	pcSrc = $img.attr('src'),
	spSrc = $img.data('sp-src');

	enquire.register('screen and (max-width: 767px)',{
		match:function(){
			$img.attr('src',spSrc);
		},
		unmatch:function(){
			$img.attr('src',pcSrc);
		}
	});
});

});

$(function(){
	var
	$win = $(window),
	$extra = $('#extra'),
	$container = $('#container'),
	winH = $win.height();

	$win.on('resize',function(){
		winH = (ua.isiOS) ? $win.innerHeight :$win.height();
	});


	//Coin
	//////////////////////////////
	var $coin = $('#coin').find('a');
	var coinTL = new TimelineMax({paused:true,repeat:-1});
	var coinHoverTL = new TimelineMax({paused:true});
	var coinRevTL = new TimelineMax({paused:true,repeat:-1});
	var coinRevHoverTL = new TimelineMax({paused:true});


	coinTL
		.set($coin,{backgroundPosition:'0 0'})//1
		.set($coin,{backgroundPosition:'0 0'},'+=5')//1
		.set($coin,{backgroundPosition:'0 -240px'},'+=0.05')//2
		.set($coin,{backgroundPosition:'0 -480px'},'+=0.05')//3
		.set($coin,{backgroundPosition:'0 -720px'},'+=0.05')//4
		.set($coin,{backgroundPosition:'0 -960px'},'+=0.05')//5
		.set($coin,{backgroundPosition:'0 -1200px'},'+=0.05')//6
		.set($coin,{backgroundPosition:'0 -1440px'},'+=0.05')//7
		.set($coin,{backgroundPosition:'0 -1680px'},'+=0.05')//8
		.set($coin,{backgroundPosition:'0 -1920px'},'+=0.05')//9
		.set($coin,{backgroundPosition:'0 -2160px'},'+=0.05')//10
		.set($coin,{backgroundPosition:'0 -2400px'},'+=0.05')//11
		.set($coin,{backgroundPosition:'-240px 0'},'+=0.05')//12
		.set($coin,{backgroundPosition:'-240px -240px'},'+=0.05')//13
		.set($coin,{backgroundPosition:'-240px -480px'},'+=0.05')//14
		.set($coin,{backgroundPosition:'-240px -720px'},'+=0.05')//15
		.set($coin,{backgroundPosition:'-240px -960px'},'+=0.05')//16
		.set($coin,{backgroundPosition:'-240px -1200px'},'+=0.05')//17
		.set($coin,{backgroundPosition:'-240px -1440px'},'+=0.05')//18
		.set($coin,{backgroundPosition:'-240px -1680px'},'+=0.05')//19
		.set($coin,{backgroundPosition:'-240px -1920px'},'+=0.05')//20
		.set($coin,{backgroundPosition:'-240px -2160px'},'+=0.05')//21
		.set($coin,{backgroundPosition:'-240px -2400px'},'+=0.05')//22
		.set($coin,{backgroundPosition:'0 0'},'+=0.05');//1

	coinHoverTL
		.set($coin,{backgroundPosition:'0 0'})//1
		.set($coin,{backgroundPosition:'0 -240px'},'+=0.05')//2
		.set($coin,{backgroundPosition:'0 -480px'},'+=0.05')//3
		.set($coin,{backgroundPosition:'0 -720px'},'+=0.05')//4
		.set($coin,{backgroundPosition:'0 -960px'},'+=0.05')//5
		.set($coin,{backgroundPosition:'0 -1200px'},'+=0.05')//6
		.set($coin,{backgroundPosition:'0 -1440px'},'+=0.05')//7
		.set($coin,{backgroundPosition:'0 -1680px'},'+=0.05')//8
		.set($coin,{backgroundPosition:'0 -1920px'},'+=0.05')//9
		.set($coin,{backgroundPosition:'0 -2160px'},'+=0.05')//10
		.set($coin,{backgroundPosition:'0 -2400px'},'+=0.05')//11
		.set($coin,{backgroundPosition:'-240px 0'},'+=0.05');//12

	coinRevTL
		.set($coin,{backgroundPosition:'-240px 0'})//12
		.set($coin,{backgroundPosition:'-240px 0'},'+=5')//12
		.set($coin,{backgroundPosition:'-240px -240px'},'+=0.05')//13
		.set($coin,{backgroundPosition:'-240px -480px'},'+=0.05')//14
		.set($coin,{backgroundPosition:'-240px -720px'},'+=0.05')//15
		.set($coin,{backgroundPosition:'-240px -960px'},'+=0.05')//16
		.set($coin,{backgroundPosition:'-240px -1200px'},'+=0.05')//17
		.set($coin,{backgroundPosition:'-240px -1440px'},'+=0.05')//18
		.set($coin,{backgroundPosition:'-240px -1680px'},'+=0.05')//19
		.set($coin,{backgroundPosition:'-240px -1920px'},'+=0.05')//20
		.set($coin,{backgroundPosition:'-240px -2160px'},'+=0.05')//21
		.set($coin,{backgroundPosition:'-240px -2400px'},'+=0.05')//22
		.set($coin,{backgroundPosition:'0 0'},'+=0.05')//1
		.set($coin,{backgroundPosition:'0 -240px'},'+=0.05')//2
		.set($coin,{backgroundPosition:'0 -480px'},'+=0.05')//3
		.set($coin,{backgroundPosition:'0 -720px'},'+=0.05')//4
		.set($coin,{backgroundPosition:'0 -960px'},'+=0.05')//5
		.set($coin,{backgroundPosition:'0 -1200px'},'+=0.05')//6
		.set($coin,{backgroundPosition:'0 -1440px'},'+=0.05')//7
		.set($coin,{backgroundPosition:'0 -1680px'},'+=0.05')//8
		.set($coin,{backgroundPosition:'0 -1920px'},'+=0.05')//9
		.set($coin,{backgroundPosition:'0 -2160px'},'+=0.05')//10
		.set($coin,{backgroundPosition:'0 -2400px'},'+=0.05')//11
		.set($coin,{backgroundPosition:'-240px 0'},'+=0.05');//12

	coinRevHoverTL
		.set($coin,{backgroundPosition:'-240px 0'})//12
		.set($coin,{backgroundPosition:'-240px -240px'},'+=0.05')//13
		.set($coin,{backgroundPosition:'-240px -480px'},'+=0.05')//14
		.set($coin,{backgroundPosition:'-240px -720px'},'+=0.05')//15
		.set($coin,{backgroundPosition:'-240px -960px'},'+=0.05')//16
		.set($coin,{backgroundPosition:'-240px -1200px'},'+=0.05')//17
		.set($coin,{backgroundPosition:'-240px -1440px'},'+=0.05')//18
		.set($coin,{backgroundPosition:'-240px -1680px'},'+=0.05')//19
		.set($coin,{backgroundPosition:'-240px -1920px'},'+=0.05')//20
		.set($coin,{backgroundPosition:'-240px -2160px'},'+=0.05')//21
		.set($coin,{backgroundPosition:'-240px -2400px'},'+=0.05')//22
		.set($coin,{backgroundPosition:'0 0'},'+=0.05');//1


	//WORKS
	//////////////////////////////
	var $worksMask = $('.circle-works__mask');
	var worksMaskTL = new TimelineMax({paused:true,repeat:-1});

	$('.circle-works__mask').each(function(idx,elm){
		var clsNum = Math.round(Math.random()*5)+1;//1〜6の整数
		//console.log(clsNum);
		$(elm).addClass('circle-works__mask--type0'+clsNum);
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

	//SNS
	//////////////////////////////
	var $fb = $('#fbbtn').find('a');
	var $tw = $('#twbtn').find('a');
	var $is = $('#isbtn').find('a');
	var fbHoverTL = new TimelineMax({paused:true});
	var fbRevHoverTL = new TimelineMax({paused:true});
	var twHoverTL = new TimelineMax({paused:true});
	var twRevHoverTL = new TimelineMax({paused:true});
	var isHoverTL = new TimelineMax({paused:true});
	var isRevHoverTL = new TimelineMax({paused:true});

	fbHoverTL
		.set($fb,{backgroundPosition:'0 0'})//1
		.set($fb,{backgroundPosition:'0 -120px'},'+=0.1')//2
		.set($fb,{backgroundPosition:'0 -240px'},'+=0.1')//3
		.set($fb,{backgroundPosition:'0 -360px'},'+=0.1')//4
		.set($fb,{backgroundPosition:'0 -480px'},'+=0.1')//5
		.set($fb,{backgroundPosition:'0 -600px'},'+=0.1')//6
		.set($fb,{backgroundPosition:'0 -720px'},'+=0.1')//7
		.set($fb,{backgroundPosition:'0 -840px'},'+=0.1');//

	fbRevHoverTL
		.set($fb,{backgroundPosition:'0 -840px'})//8
		.set($fb,{backgroundPosition:'0 -960px'},'+=0.1')//9
		.set($fb,{backgroundPosition:'0 -1080px'},'+=0.1')//10
		.set($fb,{backgroundPosition:'0 -1200px'},'+=0.1')//11
		.set($fb,{backgroundPosition:'0 -1320px'},'+=0.1')//12
		.set($fb,{backgroundPosition:'0 -1440px'},'+=0.1')//12
		.set($fb,{backgroundPosition:'0 -1560px'},'+=0.1')//14
		.set($fb,{backgroundPosition:'0 0'},'+=0.1');//0

	twHoverTL
		.set($tw,{backgroundPosition:'0 0'})//1
		.set($tw,{backgroundPosition:'0 -120px'},'+=0.1')//2
		.set($tw,{backgroundPosition:'0 -240px'},'+=0.1')//3
		.set($tw,{backgroundPosition:'0 -360px'},'+=0.1')//4
		.set($tw,{backgroundPosition:'0 -480px'},'+=0.1')//5
		.set($tw,{backgroundPosition:'0 -600px'},'+=0.1')//6
		.set($tw,{backgroundPosition:'0 -720px'},'+=0.1')//7
		.set($tw,{backgroundPosition:'0 -840px'},'+=0.1');//8


	twRevHoverTL
		.set($tw,{backgroundPosition:'0 -840px'})//8
		.set($tw,{backgroundPosition:'0 -960px'},'+=0.1')//9
		.set($tw,{backgroundPosition:'0 -1080px'},'+=0.1')//10
		.set($tw,{backgroundPosition:'0 -1200px'},'+=0.1')//11
		.set($tw,{backgroundPosition:'0 -1320px'},'+=0.1')//12
		.set($tw,{backgroundPosition:'0 -1440px'},'+=0.1')//12
		.set($tw,{backgroundPosition:'0 -1560px'},'+=0.1')//14
		.set($tw,{backgroundPosition:'0 0'},'+=0.1');//0

	isHoverTL
		.set($is,{backgroundPosition:'0 0'})//1
		.set($is,{backgroundPosition:'0 -120px'},'+=0.1')//2
		.set($is,{backgroundPosition:'0 -240px'},'+=0.1')//3
		.set($is,{backgroundPosition:'0 -360px'},'+=0.1')//4
		.set($is,{backgroundPosition:'0 -480px'},'+=0.1')//5
		.set($is,{backgroundPosition:'0 -600px'},'+=0.1')//6
		.set($is,{backgroundPosition:'0 -720px'},'+=0.1')//7
		.set($is,{backgroundPosition:'0 -840px'},'+=0.1');//8


	isRevHoverTL
		.set($is,{backgroundPosition:'0 -840px'})//8
		.set($is,{backgroundPosition:'0 -960px'},'+=0.1')//9
		.set($is,{backgroundPosition:'0 -1080px'},'+=0.1')//10
		.set($is,{backgroundPosition:'0 -1200px'},'+=0.1')//11
		.set($is,{backgroundPosition:'0 -1320px'},'+=0.1')//12
		.set($is,{backgroundPosition:'0 -1440px'},'+=0.1')//12
		.set($is,{backgroundPosition:'0 -1560px'},'+=0.1')//14
		.set($is,{backgroundPosition:'0 0'},'+=0.1');//0


	//THEBU
	//////////////////////////////
	var $thebu = $('#thebu').find('span');
	var uraThebuTL = new TimelineMax({paused:true,repeat:-1,repeatDelay:2});

	uraThebuTL
		.set($thebu,{backgroundPosition:'0 0'})//1
		.set($thebu,{backgroundPosition:'0 -261px'},'+=1.0')//2
		.set($thebu,{backgroundPosition:'0 -522px'},'+=0.125')//3
		.set($thebu,{backgroundPosition:'0 -783px'},'+=0.125')//4
		.set($thebu,{backgroundPosition:'0 -1044px'},'+=0.125')//5
		.set($thebu,{backgroundPosition:'0 -1305px'},'+=1.0')//6
		.set($thebu,{backgroundPosition:'0 -1566px'},'+=0.125')//7
		.set($thebu,{backgroundPosition:'0 -1827px'},'+=1.0')//8
		.set($thebu,{backgroundPosition:'0 -2088px'},'+=0.2')//9
		.set($thebu,{backgroundPosition:'0 -2349px'},'+=0.2')//10
		.set($thebu,{backgroundPosition:'0 -2610px'},'+=0.2')//11
		.set($thebu,{backgroundPosition:'0 -2871px'},'+=1.0')//12
		.set($thebu,{backgroundPosition:'0 -3132px'},'+=0.1')//13
		.set($thebu,{backgroundPosition:'0 -3393px'},'+=0.25')//14
		.set($thebu,{backgroundPosition:'0 -3654px'},'+=0.25')//15
		.set($thebu,{backgroundPosition:'0 -3915px'},'+=0.1')//16
		.set($thebu,{backgroundPosition:'0 -4176px'},'+=0.1')//17
		.set($thebu,{backgroundPosition:'0 -4437px'},'+=0.1')//18
		.set($thebu,{backgroundPosition:'0 -4698px'},'+=0.1')//19
		.set($thebu,{backgroundPosition:'0 -4959px'},'+=0.1')//20
		.set($thebu,{backgroundPosition:'0 -5220px'},'+=0.1')//21
		.set($thebu,{backgroundPosition:'0 -5481px'},'+=0.1')//22
		.set($thebu,{backgroundPosition:'0 -5742px'},'+=0.1')//23
		.set($thebu,{backgroundPosition:'0 -6003px'},'+=0.1')//24
/*		.set($thebu,{backgroundPosition:'0 -5220px'},'+=0.1')//21
		.set($thebu,{backgroundPosition:'0 -5481px'},'+=0.1')//22
		.set($thebu,{backgroundPosition:'0 -5742px'},'+=0.1')//23
		.set($thebu,{backgroundPosition:'0 -6003px'},'+=0.1')//24
		.set($thebu,{backgroundPosition:'0 -5220px'},'+=0.1')//21
		.set($thebu,{backgroundPosition:'0 -5481px'},'+=0.1')//22
		.set($thebu,{backgroundPosition:'0 -5742px'},'+=0.1')//23
		.set($thebu,{backgroundPosition:'0 -6003px'},'+=0.1')//24*/
		.set($thebu,{backgroundPosition:'0 -6264px'},'+=0.1')//25
		.set($thebu,{backgroundPosition:'0 -6525px'},'+=0.1')//26
		.set($thebu,{backgroundPosition:'0 -6786px'},'+=0.1')//27
		.set($thebu,{backgroundPosition:'0 -7047px'},'+=0.25')//28
		.set($thebu,{backgroundPosition:'0 -7308px'},'+=0.25')//29
		.set($thebu,{backgroundPosition:'0 0'},'+=0.25');//1


	//Extra
	//////////////////////////////
	var $strap = $('#extra-trg').find('.extra-trg__strap');
	var strapTL = new TimelineMax({paused:true,repeat:-1,repeatDelay:3});

	//1-2-3-4-3-2-1-5-6-7-6-5-1
	strapTL
		.set($strap,{backgroundPosition:'0 0'})//1
		.set($strap,{backgroundPosition:'0 -52px'},'+=0.1')//2
		.set($strap,{backgroundPosition:'0 -104px'},'+=0.1')//3
		.set($strap,{backgroundPosition:'0 -156px'},'+=0.125')//4
		.set($strap,{backgroundPosition:'0 -104px'},'+=0.1')//3
		.set($strap,{backgroundPosition:'0 -52px'},'+=0.1')//2
		.set($strap,{backgroundPosition:'0 0'},'+=0.125')//1
		.set($strap,{backgroundPosition:'0 -208px'},'+=0.1')//5
		.set($strap,{backgroundPosition:'0 -260px'},'+=0.1')//6
		.set($strap,{backgroundPosition:'0 -312px'},'+=0.125')//7
		.set($strap,{backgroundPosition:'0 -260px'},'+=0.1')//6
		.set($strap,{backgroundPosition:'0 -208px'},'+=0.1')//5
		.set($strap,{backgroundPosition:'0 0'},'+=0.125')//1
		.set($strap,{backgroundPosition:'0 -52px'},'+=0.1')//2
		.set($strap,{backgroundPosition:'0 -104px'},'+=0.1')//3
		.set($strap,{backgroundPosition:'0 -156px'},'+=0.125')//4
		.set($strap,{backgroundPosition:'0 -104px'},'+=0.1')//3
		.set($strap,{backgroundPosition:'0 -52px'},'+=0.1')//2
		.set($strap,{backgroundPosition:'0 0'},'+=0.125')//1
		.set($strap,{backgroundPosition:'0 -208px'},'+=0.1')//5
		.set($strap,{backgroundPosition:'0 -260px'},'+=0.1')//6
		.set($strap,{backgroundPosition:'0 -312px'},'+=0.125')//7
		.set($strap,{backgroundPosition:'0 -260px'},'+=0.1')//6
		.set($strap,{backgroundPosition:'0 -208px'},'+=0.1')//5
		.set($strap,{backgroundPosition:'0 0'},'+=0.125');

	//When PC
	enquire.register('screen and (min-width: 768px)',{
		match:function(){
			//ひも
			strapTL.play();

			//コイン
			$('body').removeClass('rev');
			coinTL.play();

			$coin.on({
				'click.pc': function(){
					if($('body').hasClass('rev')){
						$('.circle-menu__item,.circle-projects__item,.circle-sns__item,.circle-works__item,.circle-movie,.circle-thebu,.news').stop(true,false).fadeTo(500,0,function(){
							$('body').removeClass('rev');
							coinRevTL.pause(0);
							coinTL.play(0);
							worksMaskTL.play();
							uraThebuTL.pause(0);
						}).fadeTo(500,1);
					} else {
						$('.circle-menu__item,.circle-projects__item,.circle-sns__item,.circle-works__item,.circle-movie,.circle-thebu,.news').stop(true,false).fadeTo(500,0,function(){
							$('body').addClass('rev');
							coinTL.pause(0);
							coinRevTL.play(0);
							worksMaskTL.pause();
							uraThebuTL.play(0);
						}).fadeTo(500,1);
					}
					$coin.addClass('click');
				},
				'mouseenter.pc': function(){
					if($('body').hasClass('rev')){
						coinRevTL.pause();
						coinRevHoverTL.play(0);
					} else {
						coinTL.pause();
						coinHoverTL.play(0);
					}
				},
				'mouseleave.pc': function(){
					if($('body').hasClass('rev')){
						if($coin.hasClass('click')){
							coinRevTL.play(0);
							$coin.removeClass('click');
						} else {
							coinRevHoverTL.reverse(0).eventCallback('onReverseComplete',function(){
								coinRevTL.play(0);
							});
						}
					} else {
						if($coin.hasClass('click')){
							coinTL.play(0);
							$coin.removeClass('click');
						} else {
							coinHoverTL.reverse(0).eventCallback('onReverseComplete',function(){
								coinTL.play(0);
							});
						}
					}
				}
			});

			//Works
			worksMaskTL.play();


			//MENU
			$('.circle-menu__item').on({
				'mouseenter.pc':function(){
					if(!$('body').hasClass('rev')){
						$(this).find('.bg').stop(true,false).fadeTo(400,0.2,'easeOutQuad');
					}
				},
				'mouseleave.pc':function(){
					if(!$('body').hasClass('rev')){
						$(this).find('.bg').stop(true,false).fadeTo(400,1,'easeInQuad');
					}
				}
			},'a');


			//SNS
			$fb.on({
				'mouseenter.pc':function(){
					if(!$('body').hasClass('rev')){
						fbRevHoverTL.pause();
						fbHoverTL.play(0);
					}
				},
				'mouseleave.pc':function(){
					if(!$('body').hasClass('rev')){
						fbHoverTL.pause();
						fbRevHoverTL.play(0);
					}
				}
			});
			$tw.on({
				'mouseenter.pc':function(){
					if(!$('body').hasClass('rev')){
						twRevHoverTL.pause();
						twHoverTL.play(0);
					}
				},
				'mouseleave.pc':function(){
					if(!$('body').hasClass('rev')){
						twHoverTL.pause();
						twRevHoverTL.play(0);
					}
				}
			});
			$is.on({
				'mouseenter.pc':function(){
					if(!$('body').hasClass('rev')){
						isRevHoverTL.pause();
						isHoverTL.play(0);
					}
				},
				'mouseleave.pc':function(){
					if(!$('body').hasClass('rev')){
						isHoverTL.pause();
						isRevHoverTL.play(0);
					}
				}
			});

		},
		unmatch:function(){
			//ひも
			strapTL.pause(0);

			//コイン
			$('body').removeClass('rev');
			coinTL.pause(0);
			coinRevTL.pause(0);
			$coin.off('.pc');

			//Works
			worksMaskTL.pause();

			//MENU
			$('.circle-menu__item').off('.pc','a');

			//SNS
			$fb.off('.pc');
			$tw.off('.pc');
			$is.off('.pc');

		}
	});


	//News
	//////////////////////////////
	var $newsItem = $('.news__item');
	var newsNum = $newsItem.length;
	var i = 1;//2件目から
	setInterval(function(){
		$newsItem.removeClass('is-active').hide().eq(i).fadeIn(1000,'easeOutQuad').addClass('is-active');
		if(i==newsNum-1){
			i=0;
		} else {
			i++;
		}

	},5000);





	//Extra Slide
	//////////////////////////////
	var exSlider = $('#ex-slider').bxSlider({
		'mode':'fade',
		'controls':  false,
		'auto': true,
		'autoStart': false,
		'pause':5000
	});


	//Extra Event
	//////////////////////////////
	$('#extra-trg').on({
		'click': function(){
			$extra.stop(true,false).animate({
				top:0
			},750,'easeOutSine',function(){
				$extra.addClass('is-active');
				exSlider.startAuto();
			});

			$container.stop(true,false).animate({
				top: $extra.height()
			},750,'easeOutSine');

		},
		'mouseenter':function(){
			if($win.width()>=768){
				$(this).find('.extra-trg__hello').stop(true,false).slideDown();
				strapTL.pause(0);
			}
		},
		'mouseleave':function(){
			if($win.width()>=768){
				$(this).find('.extra-trg__hello').stop(true,false).slideUp();
				strapTL.play();
			}
		}
	});


	$extra.on('click','.extra__close,.extra__bg',function(){

		$extra.stop(true,false).animate({
			top:'-100%'
		},750,'easeOutSine',function(){
			$extra.removeClass('is-active');
			exSlider.stopAuto();
			exSlider.goToSlide(0);
		});

		$container.stop(true,false).animate({
			top:0
		},750,'easeOutSine');

		$win.scrollTop(0).off('touchmove.extra');
	});



	//Auto Showing
	//////////////////////////////
/*	if($.cookie('extra')!='done'){
		$win.on('load',function(){
			if($win.width()>=768){
				setTimeout(function(){
					$('#extra-trg').trigger('mouseenter').delay(1500).queue(function(){
						$(this).trigger('click').dequeue();
					});
				},1000);
			} else {
				setTimeout(function(){
					$('#extra-trg').trigger('click');
				},2000);
			}
			$.cookie('extra','done',{expires:1,path:'/'});
		});
	}*/


	//Movie
	//////////////////////////////
	var openingMovie = new MediaElementPlayer('#opening',{
		defaultVideoWidth: 720,
		defaultVideoHeight: 404,
		videoWidth: -1,
		videoHeight: -1,
		startVolume: 0.8,
		loop: false,
		enableAutosize: true,
		features: ['playpause','progress','current','duration','tracks','volume'/*,'fullscreen'*/],
		alwaysShowControls: false,
		iPadUseNativeControls: false,
		iPhoneUseNativeControls: false,
		AndroidUseNativeControls: false,
		alwaysShowHours: false,
		showTimecodeFrameCount: false,
		framesPerSecond: 25,
		enableKeyboard: true,
		pauseOtherPlayers: true,
		keyActions: [],
		success: function(mediaElement, originalNode) {
			$('#movie').hide().css('visibility','visible');
		},
		error: function(){}
	});


	$('a[href="#movie"]').on('click',function(){
		$('#movie').fadeIn();
		$win.trigger('resize');


		if(!ua.isiOS){
			openingMovie.play();
		}
		return false;
	});


	$('.movie__bg,.movie__close').on('click',function(){
		$('#movie').fadeOut();
		openingMovie.pause();
		return false;
	});

});


})(jQuery);