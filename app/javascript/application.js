// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
document.addEventListener('DOMContentLoaded', function () {
  var myCarousel = new bootstrap.Carousel(document.getElementById('myCarousel'));
});
const hearts = document.querySelectorAll(".heart-icon");
  hearts.forEach((heart) => {
    heart.addEventListener("click", (event) => {
      console.log("click")
      heart.classList.toggle("text-info")
  })
});
