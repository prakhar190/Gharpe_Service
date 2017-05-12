$(document).ready(function() {
  // $(".js-example-basic-single").select2();
  $( "#datepicker" ).datepicker();
  $('#timepicker').timepicker({
    timeFormat: 'h:mm p',
    interval: 60,
    minTime: '10',
    maxTime: '6:00pm',
    defaultTime: '11',
    startTime: '10:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
	});
   setTimeout(function(){
      $('.flash-message').hide().delay(8000);
    }, 9000);
  
});
