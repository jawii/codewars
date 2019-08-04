/*
Given two arrays of strings a1 and a2 return a sorted array r in 
lexicographical order of the 
strings of a1 which are substrings of strings of a2.

#Example 1: 
a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns ["arp", "live", "strong"]

#Example 2: 
a1 = ["tarp", "mice", "bull"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns []
*/


exports.inArray = function(array1, array2) {
    if (!array1 || !array2) return []

    let returnValues = []

    for (let i = 0; i < array1.length; i++) {
        let word = array1[i]

        for (let j = 0; j < array2.length; j++) {
            let word2 = array2[j];
            if (word2.includes(word) && !returnValues.includes(word)) {
                returnValues.push(word)
            }
        }
        
    }

    return returnValues
}