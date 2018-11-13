// In this kata you are required to, given a string, replace every letter with its position in the alphabet.
//
// If anything in the text isn't a letter, ignore it and don't return it.
//
// "a" = 1, "b" = 2, etc.
//
// Example
// alphabet_position("The sunset sets at twelve o' clock.")
// Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)

dummyText = "This is a test"

function alphabetPosition(text) {
  const alphabet = "abcdefghijklmnopqrstuvwxyz"

  const positions = text.split('').map(function(letter){
    if (alphabet.includes(letter.toLowerCase())) {
        return String(alphabet.indexOf(letter.toLowerCase()) + 1);
      }
  });

  return positions.filter( n => n).join(" ")
}

alphabetPosition(dummyText)

// Using regex from code wars, nice solution

function alphabetPosition(text) {
  return text
    .toUpperCase()
    .match(/[a-z]/gi)
    .map( (c) => c.charCodeAt() - 64)
    .join(' ');
}
