// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("select2")
require("jquery-bar-rating")

// External imports
import 'bootstrap';

// Internal imports
import { initAOS } from '../plugins/init_aos.js' ;
import { initSelect2 } from '../plugins/init_select2';
import { initStarRating } from '../plugins/init_jquery_bar_rating';
import { queryPresent } from '../components/init_query_present';



document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initAOS();
  initSelect2();
  initStarRating();
  queryPresent();
});


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// function replaceCocktails (innerHTML) {
//   const cocktails = document.getElementById('cocktails');
//   cocktails.innerHTML = innerHTML;
// }
// replaceCocktails("<%= j render 'cocktail', cocktails: @cocktails %>");
