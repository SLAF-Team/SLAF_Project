var browseButton = document.querySelector('#parcourir__button')
var browseList = document.querySelector('#parcourir__list')
var browseArrow = document.querySelector('#browse__arrow')

browseButton.addEventListener('click', function() {
  browseList.classList.toggle('display__numbers');
  browseArrow.classList.toggle('arrow__rotate')
});