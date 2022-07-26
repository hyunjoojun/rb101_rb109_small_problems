def average(numbers)
  sum = numbers.sum
  average = sum.to_f / numbers.length
  average.round(2)
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
