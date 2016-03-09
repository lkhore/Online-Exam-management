$(function(){
// IPad/IPhone
	var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
	ua = navigator.userAgent,

	gestureStart = function () {viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6";},

	scaleFix = function () {
		if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
			viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
			document.addEventListener("gesturestart", gestureStart, false);
		}
	};
	
	scaleFix();
	// Menu Android
	var userag = navigator.userAgent.toLowerCase();
	var isAndroid = userag.indexOf("android") > -1; 
	if(isAndroid) {
		$('.sf-menu').responsiveMenu({autoArrows:true});
	}
  $(".sf-menu>li>a").append("<em></em>");
  $(".button_wrap").append("<div class='stripe_after'></div>");
  $('.button_wrap .stripe_after').each(function() {
       var thiswidth = ($(this).parent().width() - $(this).prev().width()) ;
       $(this).css({width:thiswidth})})
});

$(window).resize(function() {
   $(".button_wrap").append("<div class='stripe_after'></div>");
    $('.button_wrap .stripe_after').each(function() {
        var thiswidth = ($(this).parent().width() - $(this).prev().width()) ;
       $(this).css({width:thiswidth})})
  });
$(window).load(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
		})