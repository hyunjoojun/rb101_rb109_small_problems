# Given an array of integers, find the one that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.
# Examples
# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

# Input: An array of numbers
# Output: An element(an integer)

# Rules:
# Find an element that appears an odd number of times.
# There will be only one element that appears an odd number of times.
# All the other elements should occur even number of times.

# Iterate through each element, count how many of the same element there are in the array.
# If the count is odd, return the element.

def find_it(array)
  array.each do |ele|
    return ele if array.count(ele).odd?
  end
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10
