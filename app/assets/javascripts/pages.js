// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


	$('.yell_something').on('click',function(){
		$(this).fadeOut();
		setTimeout(function(){
			$('.yell_form').fadeIn();
		},500);
	});


});

