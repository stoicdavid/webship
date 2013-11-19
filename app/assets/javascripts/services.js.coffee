# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#service_vehicle_id').select2({
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
	      
gm_init = ->
  gm_center = new google.maps.LatLng(19, -99)
  gm_map_type = google.maps.MapTypeId.ROADMAP
  map_options = {center: gm_center, zoom: 11, mapTypeId: gm_map_type}
  new google.maps.Map(@map_canvas,map_options);


load_track = (id,map) ->
  callback = (data) -> display_on_map(data,map)
  $.get '/services/'+id+'.json', {}, callback, 'json'  
  
  
display_on_map = (data,map) ->
  decoded_path = google.maps.geometry.encoding.decodePath(data.polyline)
  path_options = { path: decoded_path, strokeColor: "#FF0000",strokeOpacity: 0.5, strokeWeight: 5}
  track_path = new google.maps.Polyline(path_options)
  track_path.setMap(map)
  
$ ->
  map = gm_init()
  load_track(js_track_id,map)  
jQuery ->
	$('#service_departure_date').datetimepicker({
        language: 'es',
    })
