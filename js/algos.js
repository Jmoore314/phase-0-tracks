/* create a function that takes an array as an argument
loop through array from 0 to array length
create a new array that is empty
if string is first string in array save to the new array
if second + string in the array then compare string length to the new array first string length
if the string is larger than the first in the new array
then delete the first in the new array and add the string that is longer
continue looping through original array until the end and return the new arrays 0 element*/

function algos(array) {
	var new_array = []
	for (i = 0; i < array.length; i++ ) {
		if (i == 0) {
			new_array.push(array[0])
		} else {
			if (array[i].length > new_array[0].length) {
				new_array.splice(0, 1)
				new_array.push(array[i])
			}
		}
	}
	console.log("The longest item in the array is:")
	console.log(new_array[0])
}

/*create a funtion with 2 arguments for objects that act as a hash
create a new array
loop through first object
	push the first key value pair from the first object into it
	loop through the second array 
	if the pair in the new array matches the second break loops and return true
	else return false*/

function pairing(obj1, obj2) {
	var test_hash = {}
	var loop_until = false
	for ( i = 0; i < Object.keys(obj1).length; i++) {
		Object.keys(test_hash)[0] = Object.keys(obj1)[i]
		Object.values(test_hash)[0] = Object.values(obj1)[i]
		for ( i = 0; i < Object.keys(obj2).length; i++) {
			if (Object.keys(test_hash)[0] == Object.keys(obj2)[i] && Object.values(test_hash)[0] == Object.values(obj2)[i]) {
				loop_until = true
			}
		}
	}
	console.log(loop_until)
}

// Driver code

//algos(["long phrase","longest phrase","longer phrase"])
//algos(["hey there", "yo, I'm a string", "my brother is a cool guy", "this is by far the longest string in the array", "I like to eat chicken on holidays"])
//algos(["number 1", "number2", "             ", "there are plenty of fish in the sea", "sometimes I like to pretend I'm a turtle and then go out into the world and experience life"])

