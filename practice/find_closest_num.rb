# Given an integer array nums, return the number with the value closest to 0 in nums. If
# there are multiple answers, return the number with the largest value.

# Input: An Array
# Output: An integer

# The input array consists numbers.
# Find the number that is closest to 0.
# (number - 0).abs should be the smallest.
# Return the number if the difference between the number and 0 is the smallest.

def find_closest_number(arr)
  arr.min_by { |num| (num - 0).abs }
end

p find_closest_number([3, 7, 14, 1, -1]) == 1
p find_closest_number([2, 5, 7, -1]) == -1
p find_closest_number([4, 26, 10, 3]) == 3
p find_closest_number([10]) == 10
p find_closest_number([-4, -2, 1, 4, 8]) == 1
