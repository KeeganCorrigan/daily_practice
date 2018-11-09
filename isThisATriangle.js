function isTriangle(a,b,c)
{
   let arr = [a, b, c];
   highest_value = arr.splice( arr.indexOf(Math.max(a, b, c)), 1);

   sum = arr.reduce((a, b) => a + b, 0)

   if (sum > highest_value) {
     return true
  }

   return false
}

isTriangle(1, 2, 2)
