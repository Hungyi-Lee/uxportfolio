// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// require("jquery")
require("bootstrap/dist/js/bootstrap")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import 'bootstrap'
import './src/application.scss'

window.onscroll = function() {scrollFunction()};
window.onclick = function() {topFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

$(document).on('turbolinks:load', function() {
    $('#navToggle').click(function(){
        $('.header-content').toggleClass('openNav');
    });
});


//
// $(function() {
//     $(".project-item").children("li").each(function() {
//         $(this).mouseover(function() {
//             $(this).css ("background-Color", "#c0c0c0");
//         });
//         $(this).mouseout(function () {
//             $(this).css("background-Color", "#FFF");
//         });
//     });
// });

//$(document).ready(function(){
  //$(".project-title").hover(function(){
//     $(".project-hover-effect").toggle("slide");
//     $(".project-cover-image").hide();
    //$(".project-image").hide();
  //});
//});
