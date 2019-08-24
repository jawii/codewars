//7kyu
/*
School students Alice and Bob send messages to each other. 
To ensure that their messages are not readable by teachers they encrypt text with simple algorythm. 
Every message contains only latin letters (lowercase and uppercase),
digits from 0 to 9 and space symbol.

So, the encryption algorythm is:

1. Reverse the whole string.
2. Replace every letter with it ASCII code in quotes 
(A to '65', h to '104' and so on).
3. Insert digits and spaces as is.
E.g. this message:

9Hi Alice4
is encrypted as

4'101''99''105''108''65' '105''72'9
Your task is to write function decrypt to get source messages 
from encrypted strings.
*/

exports.decrypt = str => {
  // Capture digits and spaces
  let words = str.split(" ");
  console.log("Words: ", words);

  // Separate Numbers and words
  let numbersAndWords = words.map(word => {
    return word.split("'");
  });

  var decrypt = numbersAndWords.reverse().map(word1 => {
    console.log("Word: ", word1);
    const word = word1.reverse();
    var decryptedWord = "";

    for (var i = 0; i < word.length; i++) {
      let currentChar = word[i];

      if (currentChar == "") continue;

      if (word[i + 1] != "") {
        decryptedWord += currentChar;
      } else {
        let str = String.fromCharCode(Number(currentChar));
        decryptedWord += str;
      }
    }
    return decryptedWord;
  });

  console.log(decrypt);

  // Replace every letter with ASCII code

  // Reverse

  /*
  let arr = str
    .split("'")
    .filter(str => str !== "")
    .map(str => str.split(" "));
  var merged = [].concat.apply([], arr);
  // split spaces
  return merged
    .map(str => Number(str))
    .map(charcode => String.fromCharCode(charcode))
    .reverse()
    .join("");
    */
};
