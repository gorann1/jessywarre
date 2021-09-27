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



require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("../stylesheets/global.scss");

import JQuery from 'jquery'
import 'leaflet'
window.$ = window.JQuery = JQuery
import "@fortawesome/fontawesome-free/css/all"
import toastr from 'toastr'
window.toastr = toastr
//import "./quill-editor.js"
import "lightgallery.js/dist/css/lightgallery.min.css"


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
import "controllers"



