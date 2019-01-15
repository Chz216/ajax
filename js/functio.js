$(document).ready(function() {
  get_navbar();
  function get_navbar() {
    $.ajax({
      url: 'php/controller.php',
      method: 'POST',
      data: {navbar:1},
      success: function(data) {
        $('#navbar').html(data);
      }
    });
  }

  $('body').delegate('.nav-link','click',function(event) {
      event.preventDefault();
      var cid = $(this).attr('cid');
    $.ajax({
      url: 'php/controller.php',
      method: 'POST',
      data: {get_products:1, products:cid},
      success: function(data) {
        $('#get_products').html(data);
      }
    });
  });

});
