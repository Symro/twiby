// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){


    $('.yell_something').on('click',function(){
        $(this).fadeOut();
        setTimeout(function(){
            $('.yell_form').fadeIn();
        },500);
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

});

