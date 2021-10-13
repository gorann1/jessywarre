$(document).ready ->
  $(".company_selection").on "change", ->
    $.ajax
      url: "/faults/get_contacts"
      type: "GET"
      dataType: "script"
      data:
        company_id: $('.company_selection option:selected').val()
