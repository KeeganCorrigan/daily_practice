require 'pry'

string_1 = "cdefhikaaa"
string_2 = "abcaaa"

def makeAnagram(a, b)
  string_1_length = a.length
  string_2_length = b.length
  string_2 = b.chars

  similar_chars = a.chars.inject(0) do |acc, char|
    char_index = string_2.find_index(char)
    acc += 1 if char_index
    string_2.delete_at(char_index) if char_index
    acc
  end

  return ((a.length - similar_chars) + (b.length - similar_chars))
end

puts makeAnagram(string_1, string_2)
