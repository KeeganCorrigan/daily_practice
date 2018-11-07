require 'pry'

number = "+1 (613)-995-0253"

def sanitize_numbers(number)
  only_digits = number.tr('^0-9', '')

  if only_digits.length > 10
    only_digits.chars.last(10).join
  end
end

puts sanitize_numbers(number)
