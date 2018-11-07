array = [3,4,4,2,3]

def birthdayCakeCandles(ar)
  highest_num = ar.sort.last
  highest_count = ar.count(highest_num)

  return highest_count
end

puts birthdayCakeCandles(array)
