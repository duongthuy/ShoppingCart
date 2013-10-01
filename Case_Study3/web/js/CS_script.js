// JavaScript Document

$(document).ready(function(){
			$('.CS_imgproduct li').each(function(){
				var $img=$(this).children().attr('src');
				//alert($img)
				var $title=$(this).find('p.CS_name').text()
				//alert($title)
				$(this).find('div.CS_info').prepend('<img src='+$img+' /><p class="CS_product_title">'+$title+'</p>')
			})
			$('.CS_imgproduct li img').hover(function(){
				$(this).parent().find('div.CS_info').show()
			},function(){
				$(this).parent().find('div.CS_info').hide()
			}).mousemove(function(e){
				var $X=e.clientX
				var $Y=e.clientY
				$(this).parent().find('div.CS_info').css({'left':$X+20,'top':$Y-140})
			}).click(function(){
				var $link=$(this).parent().find('a').attr('href')
				window.open($link,'')
			})
		});
		
$(document).ready( function(){	
                var buttons = { previous:$('#jslidernews3 .button-previous') ,
                                next:$('#jslidernews3 .button-next') };
          
                var _complete = function(slider, index){ 
                                        $('#jslidernews3 .slider-description').animate({height:0});
                                        slider.find(".slider-description").animate({height:100}) 
                                };							;
                $('#jslidernews3').lofJSidernews( { interval : 4000,
                                                        direction		: 'opacity',	
                                                        easing			: 'easeOutBounce',
                                                        duration		: 1200,
                                                        auto		 	: true,
                                                        mainWidth:980,
                                                        buttons			: buttons,
                                                        onComplete:_complete } );	
            });
		
		
$(function(){
				$('body').append('<div id="CS_light_box"></div>')
				$('#CS_login').click(function(){
					//$('#light_box').css({'display':'block','opacity':'0'}).animate({opacity:0.6},200)
					$('#CS_light_box').css('opacity','0.5').fadeIn(100,function(){
						$('#CS_formlogin').show()
					})
					formTop()
				})
				$('#CS_formlogin div h5').click(function(){
					$('#CS_light_box,#CS_formlogin').hide()
				})
				$(window).resize(function(){
					formTop()
				})
				function formTop(){
					$('#CS_formlogin').css({'left':($(window).width()-$('#CS_formlogin').width())/2,'top':($(window).height()-$('#CS_formlogin').height())/2})
				}
				
			});
		
	  var anh=new Array();
	  anh[0]=new Image();
      anh[0].src="images/large/dien-thoai-di-dong-HTC-Windows-Phone-8X-1.jpg";
      anh[1]=new Image();
      anh[1].src="images/large/dien-thoai-di-dong-HTC-Windows-Phone-8X-6.jpg";
      anh[2]=new Image();
      anh[2].src="images/large/dien-thoai-di-dong-HTC-Windows-Phone-8X-8.jpg";
	  anh[3]=new Image();
      anh[3].src="images/large/dien-thoai-di-dong-HTC-Windows-Phone-8X-2.jpg";
	  anh[4]=new Image();
      anh[4].src="images/large/dien-thoai-di-dong-HTC-Windows-Phone-8X-3.jpg";
	  var img = 0;
	  	
      function thaydoi(k)
      {
        img = k;
		show();
       }
	   
	  function show(){
		window.document.main_img.src=anh[img].src;  
	  }