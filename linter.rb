require 'pry'

brack_1 = "{}"
brack_2 = "{["
brack_3 = "{[)"
brack_4 = "{[][]}()"

class Linter
  def initialize
    @opening_chars = [ "{", "(", "["]
    @closing_chars = [ "}", ")", "]"]
  end

  def linter(string)
    return false unless string.length % 2 == 0
    string_array = string.chars

    linter_array = string_array.inject([]) do |acc, letter|
      if acc.empty? && @opening_chars.include?(letter)
        acc.push(letter)
      elsif @opening_chars.index(acc[-1]) == @closing_chars.index(letter)
        acc.pop
      elsif @opening_chars.include?(letter)
        acc.push(letter)
      end
      acc
    end
    
    validator(linter_array)
  end

  private

  def validator(arr)
    if arr.empty?
      return true
    else
      return false
    end
  end
end
