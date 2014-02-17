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

  $('.selector').autocomplete
    source: "/search_suggestions"

  $('.select-gps').select2
    placeholder:"Asigna los GPS"
    width:"275px"

  $('.input-datepicker').datepicker().on 'changeDate', (ev)->
      $(this).datepicker('hide')
      return
	
  $('#vehicle-economic1').focus ->
    plate = $('#vehicle-plate1').val()
    vehicle_type=$('#vehicle-type1 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=1', ->
      return
    return
    
  $('#vehicle-economic2').focus ->
    plate = $('#vehicle-plate2').val()
    vehicle_type=$('#vehicle-type2 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=2', ->
      return
    return
    
  $('#vehicle-economic3').focus ->
    plate = $('#vehicle-plate3').val()
    vehicle_type=$('#vehicle-type3 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=3', ->
      return
    return
    
  $('#vehicle-economic4').focus ->
    plate = $('#vehicle-plate4').val()
    vehicle_type=$('#vehicle-type4 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=4', ->
      return
    return

  $('#vehicle-economic5').focus ->
    plate = $('#vehicle-plate5').val()
    vehicle_type=$('#vehicle-type5 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=5', ->
      return
    return
        
  $('#vehicle-economic6').focus ->
    plate = $('#vehicle-plate6').val()
    vehicle_type=$('#vehicle-type6 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=6', ->
      return
    return

  $('#vehicle-economic7').focus ->
    plate = $('#vehicle-plate7').val()
    vehicle_type=$('#vehicle-type7 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=7', ->
      return
    return
    
  $('#vehicle-economic8').focus ->
    plate = $('#vehicle-plate8').val()
    vehicle_type=$('#vehicle-type8 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=8', ->
      return
    return
    
  $('#vehicle-economic9').focus ->
    plate = $('#vehicle-plate9').val()
    vehicle_type=$('#vehicle-type9 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=9', ->
      return
    return
    
  $('#vehicle-economic10').focus ->
    plate = $('#vehicle-plate10').val()
    vehicle_type=$('#vehicle-type10 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=10', ->
      return
    return

  $('#vehicle-economic11').focus ->
    plate = $('#vehicle-plate11').val()
    vehicle_type=$('#vehicle-type11 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=11', ->
      return
    return
        
  $('#vehicle-economic12').focus ->
    plate = $('#vehicle-plate12').val()
    vehicle_type=$('#vehicle-type12 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=12', ->
      return
    return

  $('#vehicle-economic13').focus ->
    plate = $('#vehicle-plate13').val()
    vehicle_type=$('#vehicle-type13 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=13', ->
      return
    return

  $('#vehicle-economic14').focus ->
    plate = $('#vehicle-plate14').val()
    vehicle_type=$('#vehicle-type14 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=14', ->
      return
    return
        
  $('#vehicle-economic15').focus ->
    plate = $('#vehicle-plate15').val()
    vehicle_type=$('#vehicle-type15 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=15', ->
      return
    return


  $('#vehicle-economic16').focus ->
    plate = $('#vehicle-plate16').val()
    vehicle_type=$('#vehicle-type16 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=16', ->
      return
    return

  $('#vehicle-economic17').focus ->
    plate = $('#vehicle-plate17').val()
    vehicle_type=$('#vehicle-type17 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=17', ->
      return
    return
        
  $('#vehicle-economic18').focus ->
    plate = $('#vehicle-plate18').val()
    vehicle_type=$('#vehicle-type18 :selected').val()
    $.get '/services/update_form?plate=' + plate + '&vehicle_type='+vehicle_type+ '&id=18', ->
      return
    return    
        
  $('#service_departure_date1').datetimepicker();
  
  $('.nav-tabs a').click (e)->
	  e.preventDefault();
	  $(this).tab('show');
  
  $('#slider1').click ->
	  if $(this).hasClass("on")
		  $(this).removeClass('on').html($(this).data("off-text"))
		  $(this).parent().removeClass('success')
		  $('#shipment_mode2').addClass('hidden')
	  else
		  $(this).addClass('on').html($(this).data("on-text"))
		  $(this).parent().addClass('success')
		  $('#shipment_mode2').removeClass('hidden')
  $('#slider2').click ->
	  if $(this).hasClass("on")
		  $(this).removeClass('on').html($(this).data("off-text"))
		  $(this).parent().removeClass('success')
		  $('#shipment_mode4').addClass('hidden')
	  else
		  $(this).addClass('on').html($(this).data("on-text"))
		  $(this).parent().addClass('success')
		  $('#shipment_mode4').removeClass('hidden')
  $('#slider3').click ->
	  if $(this).hasClass("on")
		  $(this).removeClass('on').html($(this).data("off-text"))
		  $(this).parent().removeClass('success')
		  $('#shipment_mode6').addClass('hidden')
	  else
		  $(this).addClass('on').html($(this).data("on-text"))
		  $(this).parent().addClass('success')
		  $('#shipment_mode6').removeClass('hidden')
		  
  $('#service_service_type_2').click ->
	  $('#service-panel2').removeClass('invisible')
	  $('#service-panel3').addClass('invisible')
  $('#service_service_type_1').click ->
	  $('#service-panel2').addClass('invisible')	  
	  $('#service-panel3').addClass('invisible')	  
  $('#service_service_type_3').click ->
	  $('#service-panel2').removeClass('invisible')
	  $('#service-panel3').removeClass('invisible')