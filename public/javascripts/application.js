// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// AutoFadeInput plugin
(function($) {
  $.fn.autoFade = function() {
    var el = this;
    var input = $(el).children('input, textarea');
    $(input).keyup(keyWasPressed).focus(inputWasFocused).blur(inputWasBlurred);
    keyWasPressed();
    
    function keyWasPressed() {
      if ($(this).val() != '') {
        $(this).siblings('label').hide();
      }
    }

    function inputWasBlurred() {
      if ($(this).val() == '') {
       $(this).siblings('label').fadeTo(200, 1.0);
      }
    }

    function inputWasFocused() {
      $(this).siblings('label').fadeTo(200, 0.5);
    }
    
    return this;
  };
})(jQuery);

var bemaniac = {
  onReady: function() {
    this.bindMixLinks();
    this.bindTracklistScroll();
    $('.auto_fade').autoFade();
  },
  
  bindMixLinks: function() {
    $(document.body).click(function(event) {
      $('.mix').removeClass('active');
      if ($(event.target).parents('.mix').length > 0) {
        event.preventDefault();
        $(event.target).parents('.mix').addClass('active');
      }
    });
  },
  
  bindTracklistScroll: function() {
    $('.tracklist').bind('mousewheel', function(event) {
      event.preventDefault();
      var delta = event.wheelDelta / 120;
      var tracklistInner = $(this).children('.inner');
      tracklistInner.css('top', Math.max(Math.min(0, tracklistInner[0].offsetTop + delta), ($(this).outerHeight() - tracklistInner.outerHeight())) + 'px');
    });
  }
};

$(document).ready(bemaniac.onReady.apply(bemaniac));