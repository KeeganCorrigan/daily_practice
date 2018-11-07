require "pry"

time = "07:05:45PM"
time_2 = "12:40:22AM"
time_3 = "12:04:45PM"
time_4 = "06:40:03AM"




def timeConversion(s)
  if s.include?("PM")
    military_time = trim_string(s, "PM")
    if military_time[0..1] == "12"
      return military_time
    end
    military_time = military_time.sub(/^../, (s[0..1].to_i + 12).to_s)
  else
    military_time = trim_string(s, "AM")
    if military_time[0..1] == "12"
      military_time = military_time.gsub("12", "00")
    end
    military_time
  end
end

def trim_string(string, to_be_trimmed)
  string.tr(to_be_trimmed, "")
end

# puts timeConversion(time)
puts timeConversion(time_2)
# puts timeConversion(time_3)
# puts timeConversion(time_4)
