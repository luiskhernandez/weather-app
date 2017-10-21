// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//
$(function(){
  var cities = $('.js-cities')
  cities.select2({
    placeholder: 'Select a city',
    ajax: {
      url: "/cities",
      dataType: 'json',
      data: function (params) {
        return {
          q: params.term, //params send to companies controller
        };
      },
      processResults: function (data) {
        return {
          results: data.results
        };
      },
      cache: true
    }
  });
  cities.on("change", function(e) { 
    // what you would like to happen
    window.location.href = "/weather/"+cities.val()
  });
})
