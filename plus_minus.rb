require 'pry'

arr = [-4, 3, -9, 0, 4, 1]

def plusMinus(arr)
  neg_num_count = 0
  pos_num_count = 0
  zero_num_count = 0

  arr.each do |num|
    neg_num_count += 1 if num < 0
    pos_num_count += 1 if num > 0
    zero_num_count += 1 if num == 0
  end

  puts sprintf("%0.06f", pos_num_count/arr.length.to_f)
  puts sprintf("%0.06f", neg_num_count/arr.length.to_f)
  puts sprintf("%0.06f", zero_num_count/arr.length.to_f)
end

plusMinus(arr)
