$(document).ready ->
  $(".country_selection").on "change", ->
    $.ajax
      url: "/faults/get_regions"
      type: "GET"
      dataType: "script"
      data:
        country_id: $('.country_selection option:selected').val()
