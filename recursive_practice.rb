require 'pry'

num = 3

def recursive_function(arg)
  unless arg == 0
    puts arg
    new_num = arg - 1
    recursive_function(new_num)
  end
end

recursive_function(num)

def non_recursive_function(arg)
  until arg == 0
    puts arg
    arg -= 1
  end
end

non_recursive_function(num)

array = [1,2,3]

def recursive_sum_function(arr)
  num = arr.shift
  return num if arr.empty?
  num + recursive_sum_function(arr)
end

puts recursive_sum_function(array)


word = "DOG"

def reverse(string)
  puts string
  return string if string.length <= 1

  reversed_str = reverse(string[1..-1])
  reversed_str += string[0]
  puts reversed_str
  # reversed_str
end

reverse(word)
