$(document).ready(function(){

	var window_heigh = $(document).height();

	$('.connect').height(window_heigh);


    $('.yell_something').on('click',function(){
        $(this).fadeOut();
        setTimeout(function(){
            $('.yell_form').fadeIn();
        },500);
    });
	
	// Affichage bouton yell it  dus
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

    // Modal
	$('.modal_follower').on('click',function(e){
		//e.preventDefault();
		$('.modal_box').fadeIn();
		setTimeout(function(){
			$('.modal_follower').fadeIn().addClass('modal_window_visible');
		},300);
	});

	$('.modal_following').on('click',function(e){
		//e.preventDefault();
		$('.modal_box').fadeIn();
		setTimeout(function(){
			$('.modal_following').fadeIn().addClass('modal_window_visible');
		},300);
	});

	$('.icon-edit').on('click',function(e){
		e.preventDefault();
		$('.modal_box').fadeIn();
		setTimeout(function(){
			$('.modal_edit_profile').fadeIn().addClass('modal_window_edit_visible');
		},300);
	});

	$('.icon-off').on('click',function(e){
		e.preventDefault();
		$('.modal_box').fadeIn();
		setTimeout(function(){
			$('.modal_logout').fadeIn().addClass('modal_window_visible');
		},300);
	});

	$('.close_modal').on('click',function(e){
		e.preventDefault();
		$('.modal_following').removeClass('modal_window_visible');
		$('.modal_follower').removeClass('modal_window_visible');
		$('.modal_edit_profile').removeClass('modal_window_edit_visible');
		$('.modal_logout').removeClass('modal_window_visible');

		setTimeout(function(){
			$('.modal_box').fadeOut();
		},300);
	});


	$('.leave_no').on('click',function(e){
		e.preventDefault();
		$('.modal_logout').removeClass('modal_window_visible');
		setTimeout(function(){
			$('.modal_box').fadeOut();
		},300);
	});

    // Count characters
    $('#tweet_content').keyup(function () {
        var max = 140;
        var len = $(this).val().length;
        if (len >= max) {
            $('.nb_caract').text(' you have reached the limit').addClass('limit_reached');
        } else {
            var ch = max - len;
            $('.nb_caract').text(ch).removeClass('limit_reached');;
        }
    });

    // Notice Error
    var flash_message = $('.flash_message');
    if( flash_message.data("type") != "" ){
      flash_message.addClass(flash_message.data("type"));
    }

    // Toggle tweet list or favs list

    
});

