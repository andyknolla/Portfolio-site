$(document).ready(function() {

  if ( $(window).width() > 736 ) {
    $('#pauseVid').css("visibility",'visible');
  };

  $('#pauseVid').on('click', function() {
    console.log('pause');
    var vid = document.getElementById('background');
    vid.pause();
    $('#pauseVid').hide();
    $('#pauseVid').css("visibility",'hidden');
    $('#playVid').show();
    $('#playVid').css("visibility",'visible');
  })

  $('#playVid').on('click', function() {
    var vid = document.getElementById('background');
    vid.play();
    $('#playVid').hide();
    $('#playVid').css("visibility",'hidden');
    $('#pauseVid').show();
    $('#pauseVid').css("visibility",'visible');
  })
})
