=begin
input: array of integers
output: number rounded to 3 decimal places.

rules:
- Input array has integers.
- Multiply all the integers, then divide it by number of integers in the array.
- Return the final number rounded to 3 decimal places.
- Array is non-empty.

Algorithm:
- Covert all integers in floats.
- Multiply all the numbers.
- Divide it by the length of the array.
- Round to 3 decimal places.
=end

def show_multiplicative_average(numbers)
  product = numbers.inject(:*).to_f
  average = product / numbers.length
  puts "The result is #{format('%.3f', average)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667