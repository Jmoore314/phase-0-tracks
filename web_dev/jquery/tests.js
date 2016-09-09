var photos = document.getElementsByTagName("img");
artsyPhoto = photos[0];
launchPhoto = photos[1];

console.log(artsyPhoto);
console.log(launchPhoto);
artsyPhoto.style.border = "10px dotted pink";
launchPhoto.style.border = "10px yellow";
launchPhoto.style.borderStyle = "dotted dashed solid double";

var title = document.getElementById("title");
title.style.fontSize = "5em";

var subtitle = document.getElementById("subtitle");
subtitle.style.fontSize = "3em";

var body = document.getElementById("body");
body.style.backgroundColor = "orange";

function colorChanger(event) {
  console.log("We clicked this!")
  console.log(event);
  event.target.style.border = "10px solid blue";
}

launchPhoto.addEventListener("click", colorChanger);

// Make the list items red and decreaseing in font size
var list = document.getElementsByTagName("li");

// for (var i = 0; i < list.length; i++) {
// 	list[i].style.color = "red";
// 	var j = 6
// 	list[i].style.fontSize = j - i + "em";
// }

// declaring a counter function to increase with each click
var counter = 0

// function Counter(event) {
// 	counter += 1
// 	for (var i = 0; i < counter; i++) {
// 		list[i].style.color = "red";
// 		var j = 6
// 		list[i].style.fontSize = j - i + "em";
// 	}
// }

// artsyPhoto.addEventListener("click", Counter);

// artsyPhoto.click(function Counter() {
// 	counter += 1
// 	for (var i = 0; i < counter; i++) {
// 		list[i].style.color = "red";
// 		var j = 6
// 		list[i].style.fontSize = j - i + "em";
// 	}
// })

//artsyPhoto.addEventListener("click", Counter);


