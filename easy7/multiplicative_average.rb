=begin
Input: Array of integers
Output: A decimal

Rules:
- Multiply all numbers in the array.
- Divide it by the number of entries in the array to get the average.
- Print out the result rounded to 3 decimal places.
- The input array is non-empty.

Algorithm:
- Use inject method to multiply all the numbers.
- Divide it by the length of the array.
- Use format method to round it to 3 decimal places.
=end

# def show_multiplicative_average(numbers)
#   product = numbers.inject(:*).to_f
#   average = product / numbers.length
#   puts "The result is #{format('%.3f', average)}"
# end

def show_multiplicative_average(numbers)
  average = numbers.inject(:*).to_f / numbers.length
  format('%.3f', average)
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
