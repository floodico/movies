$(document).on "turbolinks:load", ->
  $('#reviews-link').click ->
    $('#reviews-link').toggle();
    $('#leave_review').toggle();
    $('#review_text').focus();
