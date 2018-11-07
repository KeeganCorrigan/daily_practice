require 'pry'

rotations = 2

array = [1, 2, 3, 4, 5]

def rotLeft(a, d)
  d.times do
    rotation = a.shift
    a << rotation
  end

  return a
end

puts rotLeft(array, rotations)
