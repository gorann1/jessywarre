import Rails from '@rails/ujs';
var country_select, city_select, selected_country;
window.addEventListener("load", () => {
  country_select = document.querySelector("select#q_country_id_eq");
  city_select = document.querySelector("select#q_region_id_eq");
  country_select.addEventListener('change', (event) => {
    selected_country = country_select.selectedIndex;
    Rails.ajax({
      url: "/locations/" + selected_country,
      type: "get",
      data: "",
      success: function (data) {
        city_select.innerHTML = data;
       },
      error: function (data) { }
    })
  })
});
