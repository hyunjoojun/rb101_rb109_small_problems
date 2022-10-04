# There is an array with some numbers. All numbers are equal except for one. Try to find it!
# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.
# The tests contain some very huge arrays, so think about performance.

# Input: An Array
# Output: An Integer

# Rules:
# In the given array, there is only one number that is unique.
# All other numbers are equal.
# Return the number that is unique.
# Array has more than 3 numbers.

# Iterate through the numbers.
# Find the number that has count of 1.
# Return the number.

def find_uniq(arr)
  arr.min_by { |num| arr.count(num) }
end

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
