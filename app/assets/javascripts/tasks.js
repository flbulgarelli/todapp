$(document).on('turbolinks:load', function() {
  $('.edit_task input[type=checkbox]').on('change', function(e) {
    $(e.target).closest('form').submit();
  });
});
