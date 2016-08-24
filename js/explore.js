/* function opener taking a string
	start an array
	start a for loop with i as a variable decreaing by 1 each time starting from the end of the string's length down to 0
		add iterating value to new array
	create a new variable to join the original array together
	console log the joining array

call function with string as an argument
*/

function reverse(str) {
	var array = [];
	for (var i = str.length - 1; i > -1; i--) {
		array.push(str[i]);
	}
	var join = array.join("");
	return join;
}

var result = reverse("Hello There, you're cool");

var return_result = false;

if (return_result) {
	console.log(result);
} else {
	console.log(result);
}
