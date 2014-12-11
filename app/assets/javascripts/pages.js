// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


    $('.yell_something').on('click',function(){
        $(this).fadeOut();
        setTimeout(function(){
            $('.yell_form').fadeIn();
        },500);
    });
	
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('.yell_it_btn').fadeIn();
		} else {
			$('.yell_it_btn').fadeOut();
		}
	});
	
	$('.yell_it_btn').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		$('.yell_something').fadeOut();
		setTimeout(function(){
			$('.yell_form').fadeIn();
		},800);

		return false;
	});

	$('.modal_follower').on('click',function(e){
		e.preventDefault();
		$('.modal_box').fadeIn();
		setTimeout(function(){
			$('.modal_follower').fadeIn().addClass('modal_window_visible');
		},300);
	});

	$('.modal_following').on('click',function(e){
		e.preventDefault();
		$('.modal_box').fadeIn();
		setTimeout(function(){
			$('.modal_following').fadeIn().addClass('modal_window_visible');
		},300);
	});

	$('.close_modal').on('click',function(e){
		e.preventDefault();
		$('.modal_following').removeClass('modal_window_visible');
		$('.modal_follower').removeClass('modal_window_visible');

		setTimeout(function(){
			$('.modal_box').fadeOut();
		},300);
	});

    // edit form
    $('.edit_user').on('submit', function(e){
        e.preventDefault();
        var data = $(this).serialize();
        $.ajax({
            type: 'POST',
            url: '/users',
            data: data
        })
        .done(function(){
            console.log('done');
        })
        .fail(function(){
            console.log('error');
        })
    });

    $(".yell_time").each(function(i,el){
        $(this).html(moment($(this).html()).fromNow());
    });

    
});

