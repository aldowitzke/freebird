import "bootstrap";
import "select2";
// Can also be included with a regular script tag
import Typed from 'typed.js';

var options = {
  strings: [" ", "Som de Barzinho", "Mpb", "Rap", "Banda de Casamento", "Rock"],
  typeSpeed: 40,
  attr: "placeholder",
  loop: true
}

var typed = new Typed(".home-search-name", options);

//$( ".home-search-city select" ).select2({
$( "#search_city" ).select2({
    theme: "bootstrap",
    placeholder: "Cidade"
});

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();
