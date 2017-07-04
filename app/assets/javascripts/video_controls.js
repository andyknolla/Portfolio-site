$(document).ready(function() {

  $('#pauseVid').show();
  $('#pauseVid').css("visibility",'visible');

  $('#pauseVid').on('click', function() {
    console.log('pause');
    var vid = document.getElementById('background');
    vid.pause();
    $('#pauseVid').hide();
    console.log($('#pauseVid') == true);
    $('#playVid').show();
  })

  $('#playVid').on('click', function() {
    var vid = document.getElementById('background');
    vid.play();
    $('#playVid').hide();
    $('#pauseVid').show();
  })
})
