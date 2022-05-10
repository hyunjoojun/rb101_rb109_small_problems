def average(array)
  sum = 0
  array.each { |number| sum += number }
  sum / array.length
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
