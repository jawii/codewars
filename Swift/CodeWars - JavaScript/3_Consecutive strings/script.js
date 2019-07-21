/*
You are given an array strarr of strings and an integer k. 
Your task is to return the first longest string consisting of k consecutive strings taken in the array.

Example:

longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

Note
consecutive strings : follow one after another without an interruption
*/

function longestConsec(strarr, k) {

	if (strarr.length <= 0 || k <= 0 || k > strarr.length) {
		return ""
	}

	var stringLenghts = strarr.map(string => {
		return string.length
	})

	let index = 0
	let bestStartIndex = 0;
	var bestSum = 0;

	while (index < strarr.length) {
		// console.log(index);
		let sum = 0;
		for (let i = 0; i < k; i++) {
			// console.log(strarr[index + i]);
			sum += stringLenghts[index + i];
		}
		// console.log(sum);
		if (sum > bestSum) {
			bestStartIndex = index 
			bestSum = sum
		}
		index++;
	}

	let returnString = "";
	for (let i = 0; i < k; i++) {
		returnString += strarr[bestStartIndex + i];
	}
	return returnString
}


console.log(longestConsec(["zone", "abigail", "theta", "form", "libe", "zas"], 2));
console.log(longestConsec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1));
console.log(longestConsec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2, 1));

/*
"abigailtheta
"oocccffuucccjjjkkkjyyyeehh
(), "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
(["wlwsasphmxx","owiaxujylentrklctozmymu","wpgozvxxiu"], 2), "wlwsasphmxxowiaxujylentrklctozmymu")
(["zone", "abigail", "theta", "form", "libe", "zas"], -2), "")
(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 3), "ixoyx3452zzzzzzzzzzzz")
(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15), "")
(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 0), "")
*/


