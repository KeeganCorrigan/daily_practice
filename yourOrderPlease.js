// Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
//
// Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
//
// If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.


// ex: Test.assertEquals(order("is2 Thi1s T4est 3a"), "Thi1s is2 3a T4est")

function order(words){
  if (words.length == 0) return ""

  let arr = words.split(" ")
  let orderedArr = []
  let wordPosition = 1

  while (orderedArr.length < arr.length) {
    for (let i = 0; i < arr.length; i++) {
      if (arr[i].includes(wordPosition)) orderedArr.push(arr[i])
    }
    wordPosition++
  }
  return orderedArr.join(" ")
}

function order(words){

  return words.split(' ').sort(function(a, b){
      return a.match(/\d/) - b.match(/\d/);
   }).join(' ');
}
