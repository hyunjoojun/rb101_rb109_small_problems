# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# Input: An array of numbers
# Output: An array

# Get rid of repeating numbers.
# Iterate through the array of numbers, check how many numbers are smaller than the current number.
# Return that number into a new array.

# def smaller_numbers_than_current(numbers)
#   numbers.map do |num|
#     smaller_than(numbers, num)
#   end
# end

# def smaller_than(numbers, test_value)
#   count = 0

#   numbers.uniq.each do |num|
#     count += 1 if num < test_value
#   end
#   count
# end

def smaller_numbers_than_current(numbers)
  sorted_numbers = numbers.sort.uniq
  numbers.map do |number|
    sorted_numbers.index(number)
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".
