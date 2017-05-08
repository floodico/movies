$(document).on "turbolinks:load", ->
  $('#reviews-link').click ->
    $('#leave_review').toggle();
    $('#review_text').focus();
