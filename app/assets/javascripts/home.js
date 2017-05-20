var ratePerHour;
var charge;
$(document).ready(function() {
  // $(".js-example-basic-single").select2();
  $( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' }).val()
  $('#timepicker').timepicker({
    timeFormat: 'h:mm p',
    interval: 60,
    minTime: '10',
    maxTime: '6:00pm',
    // defaultTime: '11',
    startTime: '10:00',
    dynamic: false,
    dropdown: true,
    scrollbar: true
	});

  setTimeout(function(){
    $('.flash-message').hide();
  }, 5000);

});

$(document).on('turbolinks:load', function() {
  $('.book-service').click(function(e){
    e.preventDefault();
    $('.open-modal')[0].click();
    document.getElementById("booked-service-form").submit();
  });

  $("#booked_service_service_id").on('change', function() {
    getRatePerHour();
  });
  $('#hours_booked').on('change', function(){
    $('#booked_service_hours_booked').val($(this).val());
    charge = ratePerHour*$(this).val();
    $('.total-amount').text(charge);
    $('#stripeAmount').val(charge);
  });
  $('.pay-later').click(function(e){
    document.getElementById("booked-service-form").submit();
  });
  getRatePerHour();

  $('.stripe-button-el').click(function(e){
    $('#service_booked_service_id').val($('#booked_service_service_id').val());
    $('#service_booked_postal_code').val($('#booked_service_postal_code').val());
    $('#service_booked_preffered_date').val($('#booked_service_preffered_date').val());
    $('#service_booked_preffered_time').val($('#booked_service_preffered_time').val());
    $('#service_booked_hours_booked').val($('#booked_service_hours_booked').val());
    $('#service_booked_user_id').val($('#booked_service_user_id').val());
  });


});

function getRatePerHour(){
  $.get("/services/get_rate_per_hour/"+$('#booked_service_service_id').val(), function(data, status){
    ratePerHour= data.rate;
    charge = ratePerHour;
    $('.total-amount').text(charge);
      $('#stripeAmount').val(charge);
  });
}
