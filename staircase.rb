require 'pry'

steps = 6

def staircase(n)
  steps = n

  n.times do
    stairs = "#" * (n - steps + 1)
    puts stairs.rjust(n, " ")
    steps -= 1
  end
end

staircase(steps)
