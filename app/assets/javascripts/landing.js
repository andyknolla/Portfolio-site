$(document).ready(function() {


  $('.landing-scroll').on('click',function() {
    console.log('scroll');
    $('html, body').animate({
      scrollTop: $("#landing-profile").offset().top
    }, 1000);

  });
})
