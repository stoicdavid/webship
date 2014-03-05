(function() {
  jQuery(function() {
    var locations;
    $('#service_departure_id').hide();
    locations = $('#service_departure_id').html();
    $('#service_state_id').change(function() {
      var escaped_state, options, state;
      state = $('#service_state_id :selected').text();
      escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      options = $(locations).filter("optgroup[label='" + escaped_state + "']").html();
      if (options) {
        $('#service_departure_id').html(options);
        return $('#service_departure_id').show();
      } else {
        $('#service_departure_id').empty();
        return $('#service_departure_id').hide();
      }
    });
    $('#service_arrival_id').hide();
    locations = $('#service_arrival_id').html();
    $('#service_state_id2').change(function() {
      var escaped_state, options, state;
      state = $('#service_state_id2 :selected').text();
      escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      options = $(locations).filter("optgroup[label='" + escaped_state + "']").html();
      if (options) {
        $('#service_arrival_id').html(options);
        return $('#service_arrival_id').show();
      } else {
        $('#service_arrival_id').empty();
        return $('#service_arrival_id').hide();
      }
    });
    $('.selector').autocomplete({
      source: "/search_suggestions"
    });
    $('.select-gps').select2({
      placeholder: "Asigna los GPS",
      width: "275px"
    });
    $('.input-datepicker').datepicker().on('changeDate', function(ev) {
      $(this).datepicker('hide');
    });
    $('#vehicle-economic1').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate1').val();
      vehicle_type = $('#vehicle-type1 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=1', function() {});
    });
    $('#vehicle-economic2').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate2').val();
      vehicle_type = $('#vehicle-type2 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=2', function() {});
    });
    $('#vehicle-economic3').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate3').val();
      vehicle_type = $('#vehicle-type3 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=3', function() {});
    });
    $('#vehicle-economic4').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate4').val();
      vehicle_type = $('#vehicle-type4 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=4', function() {});
    });
    $('#vehicle-economic5').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate5').val();
      vehicle_type = $('#vehicle-type5 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=5', function() {});
    });
    $('#vehicle-economic6').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate6').val();
      vehicle_type = $('#vehicle-type6 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=6', function() {});
    });
    $('#vehicle-economic7').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate7').val();
      vehicle_type = $('#vehicle-type7 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=7', function() {});
    });
    $('#vehicle-economic8').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate8').val();
      vehicle_type = $('#vehicle-type8 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=8', function() {});
    });
    $('#vehicle-economic9').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate9').val();
      vehicle_type = $('#vehicle-type9 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=9', function() {});
    });
    $('#vehicle-economic10').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate10').val();
      vehicle_type = $('#vehicle-type10 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=10', function() {});
    });
    $('#vehicle-economic11').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate11').val();
      vehicle_type = $('#vehicle-type11 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=11', function() {});
    });
    $('#vehicle-economic12').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate12').val();
      vehicle_type = $('#vehicle-type12 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=12', function() {});
    });
    $('#vehicle-economic13').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate13').val();
      vehicle_type = $('#vehicle-type13 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=13', function() {});
    });
    $('#vehicle-economic14').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate14').val();
      vehicle_type = $('#vehicle-type14 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=14', function() {});
    });
    $('#vehicle-economic15').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate15').val();
      vehicle_type = $('#vehicle-type15 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=15', function() {});
    });
    $('#vehicle-economic16').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate16').val();
      vehicle_type = $('#vehicle-type16 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=16', function() {});
    });
    $('#vehicle-economic17').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate17').val();
      vehicle_type = $('#vehicle-type17 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=17', function() {});
    });
    $('#vehicle-economic18').focus(function() {
      var plate, vehicle_type;
      plate = $('#vehicle-plate18').val();
      vehicle_type = $('#vehicle-type18 :selected').val();
      $.get('/services/update_form?plate=' + plate + '&vehicle_type=' + vehicle_type + '&id=18', function() {});
    });
    $('#service_departure_date1').datetimepicker();
    $('.nav-tabs a').click(function(e) {
      e.preventDefault();
      return $(this).tab('show');
    });
    $('.wizard-actions .btn-next').click(function() {
      var id;
      id = $('.wizard-actions .btn-next').data('id');
      $.get('/services/transition?id=' + id, function() {});
    });
    $('#slider1').click(function() {
      if ($(this).hasClass("on")) {
        $(this).removeClass('on').html($(this).data("off-text"));
        $(this).parent().removeClass('success');
        return $('#shipment_mode2').addClass('hidden');
      } else {
        $(this).addClass('on').html($(this).data("on-text"));
        $(this).parent().addClass('success');
        return $('#shipment_mode2').removeClass('hidden');
      }
    });
    $('#slider2').click(function() {
      if ($(this).hasClass("on")) {
        $(this).removeClass('on').html($(this).data("off-text"));
        $(this).parent().removeClass('success');
        return $('#shipment_mode4').addClass('hidden');
      } else {
        $(this).addClass('on').html($(this).data("on-text"));
        $(this).parent().addClass('success');
        return $('#shipment_mode4').removeClass('hidden');
      }
    });
    $('#slider3').click(function() {
      if ($(this).hasClass("on")) {
        $(this).removeClass('on').html($(this).data("off-text"));
        $(this).parent().removeClass('success');
        return $('#shipment_mode6').addClass('hidden');
      } else {
        $(this).addClass('on').html($(this).data("on-text"));
        $(this).parent().addClass('success');
        return $('#shipment_mode6').removeClass('hidden');
      }
    });
    $('#service_service_type_2').click(function() {
      $('#service-panel2').removeClass('invisible');
      return $('#service-panel3').addClass('invisible');
    });
    $('#service_service_type_1').click(function() {
      $('#service-panel2').addClass('invisible');
      return $('#service-panel3').addClass('invisible');
    });
    return $('#service_service_type_3').click(function() {
      $('#service-panel2').removeClass('invisible');
      return $('#service-panel3').removeClass('invisible');
    });
  });

}).call(this);
