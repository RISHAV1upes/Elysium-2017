// Freelancer Theme JavaScript

(function($) {
    "use strict"; // Start of use strict

    // $("#animation_container").hide();

    // jQuery for page scrolling feature - requires jQuery Easing plugin
    $(".scrl").on('mousewheel', function(event) {

           var $anchor = $(this);


        if(event.originalEvent.wheelDelta > 0){
        $('html, body').stop().animate({
            scrollTop: $($anchor).offset().top - (screen.height)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();}

        else if(event.originalEvent.wheelDelta < 0) {
          $('html, body').stop().animate({
              scrollTop: $($anchor).offset().top + (screen.height)
          }, 1100, 'easeInOutExpo');
          event.preventDefault();}


        // if($($anchor).offset().top + screen.height > 826 && $($anchor).offset().top + screen.height < 1800)
        // {$("#animation_container").fadeIn();}

    });


    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    });

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function(){
            $('.navbar-toggle:visible').click();
    });

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

    // Floating label headings for the contact form
    $(function() {
        $("body").on("input propertychange", ".floating-label-form-group", function(e) {
            $(this).toggleClass("floating-label-form-group-with-value", !!$(e.target).val());
        }).on("focus", ".floating-label-form-group", function() {
            $(this).addClass("floating-label-form-group-with-focus");
        }).on("blur", ".floating-label-form-group", function() {
            $(this).removeClass("floating-label-form-group-with-focus");
        });
    });

})(jQuery); // End of use strict
