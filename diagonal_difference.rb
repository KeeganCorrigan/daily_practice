require 'pry'

# 3
# 11 2 4
# 4 5 6
# 10 8 -12

array = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

def diagonal_difference(arr)
  main_diagonal_sum=0
    main_skew_diagonal_sum=0
    arr.each_with_index do |row, i|
      binding.pry
      main_diagonal_sum += row[i]
      main_skew_diagonal_sum += row[-i-1]
    end
    puts (main_diagonal_sum - main_skew_diagonal_sum).abs
end

diagonal_difference(array)
