$(document).ready(function() {

// add pause persistence b/w pages

// add session storage state change when user clicks pause_vid
// check session storage variable each time a new page loads


  $(window).on('mousemove',function() {
    $('#pauseVid').on('click', function() {
      var vid = document.getElementById('background');
      vid.pause();
      $('#pauseVid').hide();
      $('#playVid').show();
    })

    $('#playVid').on('click', function() {
      var vid = document.getElementById('background');
      vid.play();
      $('#playVid').hide();
      $('#pauseVid').show();
    })
  });
})
