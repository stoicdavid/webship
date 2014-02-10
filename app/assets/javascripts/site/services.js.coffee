# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#service_departure_id').hide()
  locations = $('#service_departure_id').html()
  $('#service_state_id').change ->
    state = $('#service_state_id :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(locations).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#service_departure_id').html(options)
      $('#service_departure_id').show()
    else
      $('#service_departure_id').empty()
      $('#service_departure_id').hide()
  
  $('#service_arrival_id').hide()
  locations = $('#service_arrival_id').html()
  $('#service_state_id2').change ->
    state = $('#service_state_id2 :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(locations).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#service_arrival_id').html(options)
      $('#service_arrival_id').show()
    else
      $('#service_arrival_id').empty()
      $('#service_arrival_id').hide()
	  
  $('.select2').select2({
         placeholder: "Teclea al menos 2 caractéres",
  });
  
  $('#service_departure_date1').datetimepicker();
  $('.nav-tabs a').click (e)->
	  e.preventDefault();
	  $(this).tab('show');
  
  $('.slider-button').click ->
	  if $(this).hasClass("on")
		  $(this).removeClass('on').html($(this).data("off-text"))
		  $(this).parent().removeClass('success')
	  else
		  $(this).addClass('on').html($(this).data("on-text"))
		  $(this).parent().addClass('success')
		  
		  