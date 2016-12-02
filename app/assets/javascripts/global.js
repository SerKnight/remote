function globalInit(){
	datePickerInit()	
}


function homepageToggle() {
	$(".extra-slider").extraSlider({
	  type: 'fade',
	  auto: 2
	});
}

function scrollArrow(){
	$(".fa-angle-double-down").click(function(){
		TweenLite.to(window, 0.9, {scrollTo:{y: $('.fa-angle-double-down').offset().top + 25, x:0}, ease:Power2.easeOut})
	})
}


function datePickerInit() {
	if($( "#datepicker" ).length != 0){
	  $( "#datepicker" ).datepicker({
	    changeMonth: true,
	    changeYear: true,
	    maxDate: "1d",
	    dateFormat: "MM d, yy",
	    yearRange: '1975:2016',
	  });
	}
}
