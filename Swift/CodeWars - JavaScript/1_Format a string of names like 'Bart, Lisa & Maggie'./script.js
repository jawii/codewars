function list(names) {
	if (names.length === 0) {
		return ""
	}

	if (names.length === 1) {
		return names[0].name
	}

	// Iterate trough second last element 
	// Could also pop the last element. 
	let nameString = "";
	for (var i = 0; i < names.length - 1; i++) {
		nameString += names[i].name + ", "
	}
	nameString = nameString.substring(0, nameString.length - 2);

	nameString += " & " + names[names.length - 1].name;

  	return nameString
}

console.log(
list([
	{name: 'Bart'},
	{name: 'Lisa'},
	{name: 'Maggie'}
	])
);

list([]);
list[{name: "Jaakko"}];