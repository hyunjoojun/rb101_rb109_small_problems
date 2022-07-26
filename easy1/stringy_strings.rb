def stringy(length, first_digit = 1)
  arr = []

  length.times do |idx|
    if first_digit == 1
      number = idx.even? ? first_digit : 0
    elsif first_digit == 0
      number = idx.even? ? first_digit : 1
    end
    arr << number
  end

  arr.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(4, 0)
