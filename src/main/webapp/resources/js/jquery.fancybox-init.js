$(document).ready(function() {

	$(".imagePopup").fancybox({
		prevEffect : 'fade',
		nextEffect : 'fade',
		nextSpeed  : 'fast',
		prevSpeed  : 'fast',
		helpers:  {
			title : {
			    type : 'inside'
			},
            overlay: {
                css: {'background': 'rgba(0, 0, 0, 0.6)'}
            }
		},
		wrapCSS : 'sm-lightbox',
		padding: 10
	});

});