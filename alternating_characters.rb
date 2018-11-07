require 'pry'

chars = 'AAABBB'

def alternatingCharacters(s)
  string_arr = s.chars
  minimum_deletions = string_arr.each_with_index.inject(0) do |acc, (char, i)|
    acc += 1 if char == string_arr[i+1]
    acc
  end

  return minimum_deletions
end

puts alternatingCharacters(chars)
