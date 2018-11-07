require 'pry'

expected = [0,1,1,2,3,5,8,13,21,34]

array = [0, 1]

length = 1

def xbonacci(s,n)
  sequence_length = s.length

  return [] if n == 0
  return s.first(n) if sequence_length >= n

  if s.length < n
    until s.length == n
      s << s.last(sequence_length).sum
    end

    s
  elsif s.length >= n
    s.first(n)
  end
end
