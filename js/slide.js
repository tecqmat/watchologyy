(function(window, document){
  var slideIndex = 0;
  var slides = null;

  function showSlides(n) {
    slideIndex += n;
    slideIndex = 0 > slideIndex ? slides.length - 1 : slideIndex;
    slideIndex = slideIndex % slides.length;
    slides.forEach(function(slide) {
        slide.classList.remove('active');  
    });
    slides[slideIndex].classList.add('active');  
  }

  function handle(e, n){
    e.preventDefault();
    e.stopPropagation();
    showSlides(n);
  }

  function navSlide(el, n, box, key){
    el.addEventListener('click', function(e){
      handle(e, n);
    });

    box.addEventListener('keyup', function(e){
      var kc = e.keyCode || e.which;
      if(key === kc){
        handle(e, n);
      }
    });
  }

  document.addEventListener('DOMContentLoaded',function(){
    slides = document.querySelectorAll(".mySlides");
    showSlides(slideIndex);
    var box = document.querySelector('body');
    navSlide(document.querySelector('.prev'), -1, box, 37);
    navSlide(document.querySelector('.next'), 1, box, 39);
  });
})(window, document);