def sum(number)
  sum = 0
  str_digits = number.to_s.split('')
  str_digits.each { |str_digit| sum += str_digit.to_i }
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
