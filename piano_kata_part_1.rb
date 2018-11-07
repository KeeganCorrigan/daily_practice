require 'pry'

def black_or_white_key(key_press_count)
  full_key_board = key_press_count % 88
  remainder = full_key_board % 12
  if remainder == 2 || remainder == 5 || remainder == 7 || remainder == 10 || remainder == 0
    "black"
  else
    "white"
  end
end

black_or_white_key(89)

# 1, white
# 2, black
# 3, white
# 4, white
# 5, black
# 6, white
# 7, black
# 8, white
# 9, white
# 10, black
# 11, white
# 12, black
