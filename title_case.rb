require 'pry'

title = 'THE WIND IN THE WILLOWS'

minor_words = 'The In'

def title_case(title, minor_words = " ")
  return '' if title == ''
  title_array = title.split(" ")

  minor_words_array = minor_words.downcase.split(" ")
  title_array[0].capitalize!

  title_array.map.with_index do |word, i|
    if i == 0
      word.capitalize
    elsif minor_words_array.include?(word.downcase)
      word.downcase
    else
      word.capitalize
    end
  end.join(" ")
end

puts title_case(title, minor_words)
