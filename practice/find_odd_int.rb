# Given an array of integers, find the one that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.
# Examples
# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

# Input: An array of numbers
# Output: An Integer

# Rules:
# Return the number in the given array if it appears odd number of times.
# Always only one integer that appears an odd number of times.

# Create an array that has unique numbers only.
# Iterate through the unique numbers array to count how many times it appears in the input array.
# If the count is an odd number, return the number.

def find_it(seq)
  unique_numbers = seq.uniq
  unique_numbers.each do |num|
    return num if seq.count(num).odd?
  end
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10
