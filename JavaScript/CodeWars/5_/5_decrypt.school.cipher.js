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
  var decrypt = "";
  var foundNextCharcode = false;
  var skipTo = -1;

  for (var i = 0; i < str.length; i++) {
    if (i < skipTo) continue;
    var currentCharacter = str[i];
    console.log("Current character: ", currentCharacter);

    // if number, append it
    if (!isNaN(currentCharacter)) {
      decrypt += currentCharacter;
      continue;
    }

    // if space, append it
    if (currentCharacter == " ") {
      decrypt += currentCharacter;
      continue;
    }

    // now it's '
    // find where next ' is
    let nextMark = str.slice(i + 1).indexOf("'");
    console.log("Next: ", nextMark);

    // separate number it [i + 1] -> [index]
    let number = str.slice(i + 1).slice(0, nextMark);
    number = Number(number);

    decrypt += String.fromCharCode(number);
    skipTo = nextMark + i + 2;
  }

  console.log(decrypt);

  return decrypt
    .split("")
    .reverse()
    .join("");
};
