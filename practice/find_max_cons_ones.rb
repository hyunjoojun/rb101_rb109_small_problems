# Given a binary array nums, return the maximum number of consecutive 1's in the array.

# Input: An array of numbers
# Output: An integer, length of consecutive 1s.

# Rules:
# Return the longest length of consecutive 1s in the array.

# Set up length = 0
# consecutive_lengths = []
# Iterate through each number and check if it's 1.
# If it's 1, Add 1 to the length.
# If it's not 1 push the length to an empty array and set the length = 0.
# Repeat the process and get the maximum number in the lengths array.

def find_max_consecutive_ones(array)
  return 0 if array.none? { |num| num == 1 }

  length = 0
  consecutive_lengths = []
  array.each do |num|
    if num == 1
      length += 1
      consecutive_lengths << length
    else
      length = 0
    end
  end
  consecutive_lengths.max
end

p find_max_consecutive_ones([1,1,0,0,1,0]) == 2
p find_max_consecutive_ones([0,1,0,1,1,0,1,1,1]) == 3
p find_max_consecutive_ones([0,0,0]) == 0
p find_max_consecutive_ones([0,1,0]) == 1
p find_max_consecutive_ones([1,0,1,1,0,1]) == 2
p find_max_consecutive_ones([1,1,0,1,1,1]) == 3
