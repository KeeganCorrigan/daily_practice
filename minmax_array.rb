require 'pry'

array = [5, 7, 3, 15, 26]

def miniMaxSum(arr)
    binding.pry
    min = arr.sort[0..(arr.length-2)].sum
    max = arr.sort[1..(arr.length-1)].sum

    puts min
    puts max
end


miniMaxSum(array)
