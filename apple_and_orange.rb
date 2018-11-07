require "pry"

house_start = 7
house_end = 11
apple = 5
orange = 15
apple_arr = [-2, 2, 1]
orange_arr = [5, -6]

def countApplesAndOranges(s, t, a, b, apples, oranges)
  fallen_apples = apples.select do |apple|
    apple if (apple + a) >= s && (apple + a) <= t
  end

  fallen_oranges = oranges.select do |orange|
    orange if (orange + b) >= s && (orange + b) <= t
  end

  puts fallen_apples.count
  puts fallen_oranges.count
end


countApplesAndOranges(house_start, house_end, apple, orange, apple_arr, orange_arr)
