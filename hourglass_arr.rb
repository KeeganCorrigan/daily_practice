require 'pry'

hourglass_arr = [[1, 1, 1, 0, 0, 0],
                 [0, 1, 0, 0, 0, 0],
                 [1, 1, 1, 0, 0, 0],
                 [0, 0, 2, 4, 4, 0],
                 [0, 0, 0, 2, 0, 0],
                 [0, 0, 1, 2, 4, 0]]

integers = "-1 -1 0 -9 -2 -2 -2 -1 -6 -8 -2 -5 -1 -1 -1 -2 -3 -4 -1 -9 -2 -4 -4 -5 -7 -3 -3 -2 -9 -9 -1 -3 -1 -2 -4 -5"

def build_array(integers)
  integer_array = integers.split(" ").map(&:to_i)
  two_d_arr = []
  until integer_array.empty?
    two_d_arr << integer_array.shift(6)
  end

  return two_d_arr
end

neg_arr = build_array(integers)

def hourglassSum(arr)
  max_sum = -1.0/0.0
  arr.each_with_index do |row, i|
    break if i > (arr.length / 2)
    x = 0
    4.times do
      temp_sum = row[x..x+2].sum + arr[i + 1][x + 1] + arr[i + 2][x..x+2].sum
      x += 1
      max_sum = temp_sum if temp_sum > max_sum
      max_sum.to_i
    end
  end

  return max_sum
end

hourglassSum(neg_arr)
