# Given an array of n positive integers and a positive integer s, find the minimal length
# of a contiguous subarray of which the sum >= s. If there isn't one, return 0.

# Input: An array of numbers and an integer
# Output: An Integer

# Rules:
# We are looking for the subarray whose sum is >= number s.
# If there is non return 0.
# Return the minimal length of subarray.
# The subarray has to be contiguous.

# Find all the subarrays.
# [1, 2, 3] => [1], [1, 2], [1, 2, 3], [2], [2, 3], [3]
# Find the sum for all subarrays.
# Check if sum >= s
# Among those subarray's get the minimal length.

def find_all_subarrays(array)
  subarrays = []

  0.upto(array.length - 1) do |idx1|
    idx1.upto(array.length - 1) do |idx2|
      subarrays << array[idx1..idx2]
    end
  end

  subarrays
end

def min_sub_length(array, s)
  results = []
  subarrays = find_all_subarrays(array)

  subarrays.each do |subarray|
    results << subarray if subarray.sum >= s
  end

  results.empty? ? 0 : results.min_by { |sub| sub.length }.length
end

p min_sub_length([2, 3, 1, 2, 4, 3], 7) == 2
p min_sub_length([1, 10, 5, 2, 7], 9 ) == 1
p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p min_sub_length([1, 2, 4], 8) == 0
