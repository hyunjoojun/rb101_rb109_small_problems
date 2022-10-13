# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Input: An array of numbers.
# Output: nil or an integer(sum)

# Rules:
# If the input array's length is smaller than 5, return nil.
# Get the minimum sum of all the subarrays that have length of 5.
# Return the minimum sum in integer.
# There may be negative numbers or positive numbers or 0s.

# Get all the subarrays that have length of 5.
# Once I have all the subarrays, get the sum of the numbers.
# Return the smallest sum.

def get_subarrays(arr)
  subarrays = []

  0.upto(arr.length - 5) do |index|
    subarrays << arr[index, 5]
  end
  subarrays
end

def minimum_sum(arr)
  subarrays = get_subarrays(arr)

  subarrays.map { |sub| sub.sum }.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".
