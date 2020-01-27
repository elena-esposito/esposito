(function($){
  var ready = function() {
    $('.carousel').carousel();
    $('ul.tabs').tabs();
  }
  $(document).ready(ready);
  $(document).on('page:load', ready);
})(jQuery); // end of jQuery name space

var toggle = function() {
  $("#profile-link").toggleClass("active");
  $("#publication-link").toggleClass("active");
  $("#profile").toggleClass("hide");
  $("#publication").toggleClass("hide");
}

var get_anchor = function() {
  var anchor_value;
  var stripped_url = document.location.toString().split("#");
  if (stripped_url.length > 1)
    anchor_value = stripped_url[1];
  return anchor_value;
};

var goto_anchor = function() {
  anchor_value = get_anchor() || "algorithm_and_web";
  toggle();
  $('ul.tabs').tabs('select_tab', anchor_value);
  history.pushState('', document.title, window.location.pathname);
}

var switch_tab = function(tab_id) {
  if ($("#publication").hasClass("hide")) {
    toggle();
  }
  $('ul.tabs').tabs('select_tab', tab_id);
};

var set_transparent = function() {
  anchor_value = get_anchor() || "algorithm_and_web";
  $('.c-image').each(function(index, obj){
    if (obj.id == "c-"+anchor_value) {
      obj.classList.add("transparent");
    }
  });
}

var unset_transparent = function() {
  anchor_value = get_anchor() || "algorithm_and_web";
  $('.c-image').each(function(index, obj){
    if (obj.id == "c-"+anchor_value) {
      obj.classList.remove("transparent");
    }
  });
}
