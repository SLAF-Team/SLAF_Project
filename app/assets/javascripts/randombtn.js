var i=0,
  likesButtons = document.getElementsByClassName('button__likes--index'),
  len = likesButtons.length;

var colors = ["#304FFF", "#fe019a", "#4efd54", "#EFFF00", "#15F4EE"];

console.log(likesButtons)

function addEvent(likesBtn) {
  likesBtn.addEventListener('mouseover', function() {
    let randomNul = Math.floor(Math.random() * colors.length);
    likesBtn.style.backgroundColor = colors[randomNul];
  });

  likesBtn.addEventListener('mouseout', function() {
    likesBtn.style.backgroundColor = "transparent";
  });
};

for( ; i < len ; i++){
  addEvent(likesButtons[i]);
}