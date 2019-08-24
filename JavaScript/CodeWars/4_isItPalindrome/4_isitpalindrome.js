//8kuy
exports.isPalindrome = function(string) {
  let reversed = string
    .split("")
    .reverse()
    .join("");
  return string.toLowerCase() == reversed.toLowerCase();
};
