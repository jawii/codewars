/*
Write an algorithm that will identify valid IPv4 addresses in dot-decimal format. 
IPs should be considered valid if they consist of four octets, 
with values between 0 and 255, inclusive.

Input to the function is guaranteed to be a single string.

Examples
Valid inputs:

1.2.3.4
123.45.67.89
Invalid inputs:

1.2.3
1.2.3.4.5
123.456.78.90
123.045.067.089
Note that leading zeros (e.g. 01.02.03.04) are considered invalid.
*/

exports.isValidIP = function(str) {
  let separated = str.split(".");

  if (separated.length !== 4) return false;

  var nanFound = false;
  var outOfBounds = false;
  var leadingZeros = false;
  var metaCharacters = false;
  var isEmpty = false;

  var isValid = false;

  // try to find some element which passes the tests
  isValid = separated.some(str => {
    // not number
    if (isNaN(+str)) {
      return true;
    }

    // empty string
    if (str == "") {
      return true;
    }

    // out of bounds
    if (str < 0 || str > 255) {
      return true;
    }

    // Leading zeros
    if (str.length > 1 && str[0] == "0") {
      return true;
    }

    // Metacharacters and e (like 1e2)
    var match = /\r|\n|\s|e/.exec(str);
    if (match) {
      return true;
    }
  });

  return !isValid;
};
