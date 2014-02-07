(function() {
  var display_on_map, gm_init, load_track;

  jQuery(function() {
    $('#service_vehicle_id').select2({
      placeholder: "ingresa economico",
      allowClear: true
    });
    $('#service_departure_id').select2({
      placeholder: "ingresa el origen",
      allowClear: true
    });
    return $('#service_arrival_id').select2({
      placeholder: "ingresa destino",
      allowClear: true
    });
  });

  gm_init = function() {
    var gm_center, gm_map_type, map_options;
    gm_center = new google.maps.LatLng(19, -99);
    gm_map_type = google.maps.MapTypeId.ROADMAP;
    map_options = {
      center: gm_center,
      zoom: 11,
      mapTypeId: gm_map_type
    };
    return new google.maps.Map(this.map_canvas, map_options);
  };

  load_track = function(id, map) {
    var callback;
    callback = function(data) {
      return display_on_map(data, map);
    };
    return $.get('/services/' + id + '.json', {}, callback, 'json');
  };

  display_on_map = function(data, map) {
    var decoded_path, path_options, track_path;
    decoded_path = google.maps.geometry.encoding.decodePath(data.polyline);
    path_options = {
      path: decoded_path,
      strokeColor: "#FF0000",
      strokeOpacity: 0.5,
      strokeWeight: 5
    };
    track_path = new google.maps.Polyline(path_options);
    return track_path.setMap(map);
  };

  $(function() {
    var map;
    map = gm_init();
    return load_track(js_track_id, map);
  });

}).call(this);
