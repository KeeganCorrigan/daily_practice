require 'pry'

arr = [1,2,2,3,2]
sub_arr = [2,2,3,2]

def validate_peak(sub_arr)
  if sub_arr.uniq.length > 1 && sub_arr.uniq[1] < sub_arr.first
    return true
  else
    return false
  end
end

def pick_peaks(arr)

  peaks = {
            "pos" => [],
            "peaks" => []
          }


  arr.each_with_index do |num, i|
    last_index = arr.length - 1

    if i != 0 && i != last_index
      if (num >= arr[i + 1] && num > arr[i - 1]) && validate_peak(arr[i..last_index])
        peaks["pos"] << i
        peaks["peaks"] << num
      end
    end
  end

  return peaks
end

puts validate_peak(sub_arr)
puts pick_peaks(arr)
