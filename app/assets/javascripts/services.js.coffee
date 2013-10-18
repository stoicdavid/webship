# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#service_head_id').select2({
                placeholder: "ingresa economico",
                allowClear: true
            })

   $('#service_departure_id').select2({
          placeholder: "ingresa el origen",
          allowClear: true
      })
      	    
	   $('#service_arrival_id').select2({
	          placeholder: "ingresa destino",
	          allowClear: true
	      })