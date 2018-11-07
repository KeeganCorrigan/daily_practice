require 'pry'

array = [[3], [-1, 2, -3], [3], [1, -2, 3]]
add = 1

def playingWithNumbers(arr, queries)
  arr.map do |num|
    (num + queries).abs
  end.sum
end

puts playingWithNumbers(array, add)
