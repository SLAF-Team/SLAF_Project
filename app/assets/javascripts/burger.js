var menuButton = document.querySelector('#burger__button')
var menuLogo = document.querySelector('#menu__logo')
var menu = document.querySelector('#burger__menu')
var menuButtonClose = document.querySelector('#burger__button2')

menuButton.addEventListener('click', function(){
  menu.classList.toggle('navbar');
  menu.classList.toggle('navbar-open');
  menuLogo.classList.toggle('navbar__top--logo');
  menuLogo.classList.toggle('navbar__mobile--logo');
  menuButtonClose.classList.toggle('navbar__mobile--close');
  menuButtonClose.classList.toggle('navbar__mobile--open');
});

menuButtonClose.addEventListener('click', function(){
  menu.classList.toggle('navbar');
  menu.classList.toggle('navbar-open');
  menuLogo.classList.toggle('navbar__top--logo');
  menuLogo.classList.toggle('navbar__mobile--logo');
  menuButtonClose.classList.toggle('navbar__mobile--close');
  menuButtonClose.classList.toggle('navbar__mobile--open');
});