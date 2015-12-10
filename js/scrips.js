$(document).ready(function animateHeart() {
    $('span.heart').animate({
        fontSize: $('span.heart').css('fontSize') == '12px' ? '16px' : '12px'
    }, 500, animateHeart);
});