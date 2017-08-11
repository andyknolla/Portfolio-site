$(document).ready(function() {
  if ( $(window).width() > 736 ) {
    $('#playVid').css('visibility','visible');
  };
  var firstPress = true;
  $('#playVid').on('click', function() {

    if(firstPress === true) {
      $('#background-img').hide();
      $('#background-vid').show();
    }
    firstPress = false;

    var vid = document.getElementById('background-vid');
    vid.play();
    $('#playVid').hide();
    $('#playVid').css('visibility','hidden');
    $('#pauseVid').show();
    $('#pauseVid').css('visibility','visible');
  })

  $('#pauseVid').on('click', function() {
    var vid = document.getElementById('background-vid');
    vid.pause();
    $('#pauseVid').hide();
    $('#pauseVid').css('visibility','hidden');
    $('#playVid').show();
    $('#playVid').css('visibility','visible');
  })
})
