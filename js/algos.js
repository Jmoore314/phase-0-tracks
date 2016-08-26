/* create a function that takes an array as an argument
loop through array from 0 to array length
create a new array that is empty
if string is first string in array save to the new array
if second + string in the array then compare string length to the new array first string length
if the string is larger than the first in the new array
then delete the first in the new array and add the string that is longer
continue looping through original array until the end and return the new arrays 0 element*/

function algos(array) {
	var new_array = [];
	for (i = 0; i < array.length; i++ ) {
		if (i === 0) {
			new_array.push(array[0]);
		} else {
			if (array[i].length > new_array[0].length) {
				new_array.splice(0, 1);
				new_array.push(array[i]);
			}
		}
	}
	console.log("The longest item in the array is:");
	console.log(new_array[0]);
}

/*create a funtion with 2 arguments for objects that act as a hash
create a new array
loop through first object
	push the first key value pair from the first object into it
	loop through the second array 
	if the pair in the new array matches the second return true
	else return false*/

function pairing(object_1, object_2) {
	var test_hash = {}; // start a new object-hash
	var loop_check = false; // setting this variable automatically false unless made true later
	object_1_keys = Object.keys(object_1); //simplification to get an array of the keys in object 1
	object_2_keys = Object.keys(object_2); //simplification to get an array of the keys in object 2

	for ( i = 0; i < object_1_keys.length; i++) {
		test_hash[object_1_keys[i]] = object_1[object_1_keys[i]]; //adding the first key/value to the test hash
		test_hash_keys = Object.keys(test_hash); //makes an array of the test hash keys
		for ( j = 0; j < object_2_keys.length; j++) {
			// comparing the key value pairs in the test hash with object 2
			// two loops are used incase any key/value pair is not in the same order
			if (test_hash_keys[0] == object_2_keys[j] /*keys*/&& test_hash[test_hash_keys[0]] == object_2[object_2_keys[j]]/*values*/) {
				loop_check = true;
			}
		}
		delete test_hash[object_1_keys[i]]; // deletes the test object-hash to start loop testing fresh
	}
	console.log(loop_check);
}

// Driver code

algos(["long phrase","longest phrase","longer phrase"]);
algos(["hey there", "antidisestablishmentarianism", "my brother is a cool guy", "this is, by far, the longest string in the array", "I like to eat chicken on holidays"]);
algos(["number 1", "number2", "             ", "there are plenty of fish in the sea", "sometimes I like to pretend I'm a turtle and then go out into the world and experience life"]);

pairing({name: "Steven", age: 54}, {name: "Tamir", age: 54});
pairing({name: "Steven", age: 53}, {name: "Tamir", age: 54});
pairing({age: 54, name: "Samir"}, {name: "Tamir", age: 54});
pairing({name: "Steven", children: 54}, {name: "Tamir", age: 54});


// for testing new ideas of key/value pairs and access
//var sam = {name: "Steven", age: 54};
//var nate = {name: "Tamir", age: 54};
//console.log(sam,nate);
//console.log(sam[Object.keys(sam)[0]])
//console.log( Object.keys(sam)[1] == Object.keys(nate)[1] && sam[Object.keys(sam)[1]] == nate[Object.keys(nate)[1]] );