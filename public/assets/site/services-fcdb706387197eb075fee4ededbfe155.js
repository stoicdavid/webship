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
    $('.select2').select2({
      placeholder: "Teclea al menos 2 caractéres"
    });
    $('#service_departure_date1').datetimepicker();
    $('.nav-tabs a').click(function(e) {
      e.preventDefault();
      return $(this).tab('show');
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
