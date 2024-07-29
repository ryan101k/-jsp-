const searchEl = document.querySelector(".search .material-symbols-outlined");
// console.log(serachEl);
const inputEl = document.querySelector(".search input");

searchEl.addEventListener("click", function(){
    inputEl.setAttribute('placeholder', "통합검색");
} );

inputEl.addEventListener("click", function(){
    inputEl.setAttribute('placeholder', "통합검색");
} );
const swiper = new Swiper('.swiper', {
    // Optional parameters
    // direction: 'vertical',
    direction: 'horizontal',
    autoplay : true,
    loop: true,
  
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
      clickable : true,
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  
  });
