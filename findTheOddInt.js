// Given an array, find the int that appears an odd number of times.
//
// There will always be only one integer that appears an odd number of times.

let exampleArray = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]

function findOdd(A) {
  let digitCount = {}

  for (i = 0; A.length > i; i++) {
    if (!digitCount[A[i]]) {
      digitCount[A[i]] = 1
    } else {
      digitCount[A[i]] += 1
    }
  }

  for (let i in digitCount) {
   if ((digitCount[i] % 2) == 1) return parseInt(i)
  }
}

findOdd(exampleArray)

// another example from CodeWars

function findOdd(A) {
  var obj = {};
  A.forEach(function(el){
    obj[el] ? obj[el]++ : obj[el] = 1;
  });

  for(prop in obj) {
    if(obj[prop] % 2 !== 0) return Number(prop);
  }
}
