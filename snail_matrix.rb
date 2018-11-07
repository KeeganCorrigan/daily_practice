require 'pry'

arrayMatrix = [[1,2,3],[4,5,6],[7,8,9]]


def snail(trail)
  snail_array = []
  until trail.empty?
    snail_array << trail.shift
    trail.transpose.reverse!
  end

  snail_array
end


puts snailredo(arrayMatrix)
