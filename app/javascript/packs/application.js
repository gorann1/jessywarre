// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require toastr
//= require underscore
//= require gmaps/google
//= require jquery
//= require jquery-ui
//= require_tree .
//= require leaflet
//= require photoswipe
//= require lightbox




require("@rails/ujs");
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("../stylesheets/global.scss");
require("controllers")

import JQuery from 'jquery'
import 'leaflet'
import './locations'
window.$ = window.JQuery = JQuery
import "@fortawesome/fontawesome-free/css/all"
import toastr from 'toastr'
window.toastr = toastr
//import "./quill-editor.js"
import "lightgallery.js/dist/css/lightgallery.min.css"
import chatRoomChannel from "../channels/chat_room_channel";


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// Support component names relative to this directory:
const componentRequireContext = require.context("components", true);
const ReactRailsUJS = require("react_ujs");
ReactRailsUJS.useContext(componentRequireContext);

require("trix")
require("@rails/actiontext")
require("@hotwired/turbo-rails")
import "controllers"
Rails.start()
//import "../coffee/countries.js"
    $(document).ready(function (){
    $('select#q_country_id_eq').chainedTo('select#q_region_id_eq');
});

$(document).on('turbolinks:load', function () {
    $("form#set_name").on('submit', function(e){
        e.preventDefault();
        let name = $('#add_name').val();
        sessionStorage.setItem('chat_room_name', name)
        chatRoomChannel.announce({ name, type: 'join'})
        $("#modal").css('display', 'none');
    });

    $("form#send_message").on('submit', function(e){
        e.preventDefault();
        let message = $('#message').val();
        if (message.length > 0) {
            chatRoomChannel.speak(message);
            $('#message').val('')
        }
    });

    $(window).on('beforeunload', function() {
        let name = sessionStorage.getItem('chat_room_name')
        chatRoomChannel.announce({ name, type: 'leave'})
    });
})


