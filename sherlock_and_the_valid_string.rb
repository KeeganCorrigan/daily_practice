require 'pry'

string = "aabbccd"

def isValid(s)
  string_array = s.chars

  char_count = string_array.inject(Hash.new(0)) do |acc, char|
    acc[char] += 1
    acc
  end

  total_chars = char_count.values
  total_deletions = 0

  char_counts = total_chars.map do |char|
    if char == total_chars.first
      char
    elsif total_deletions == 0
      total_deletions += 1
      char - 1
    end
  end.uniq

  char_counts.delete(0)

  return "YES" if char_counts.length == 1
  return "NO"
end

puts isValid(string)
