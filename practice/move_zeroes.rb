# Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# Note that you must do this in-place without making a copy of the array.

# Example 1:
# Input: nums = [0,1,0,3,12]
# Output: [1,3,12,0,0]

# Example 2:
# Input: nums = [0]
# Output: [0]

# Input: An array of numbers
# Output: The same array but the order of elements are switched.

# Rules:
# Do not copy the input array.
# Move all the 0s towards the back of the array.
# The order of non zero elements should be the same.

# Create an empty array, iterate through the numbers, if the number is not equal to 0,
# Push the number into the new array.
# Count how many 0s are in the input element.
# Push those 0s into the new array x amount of times.

# def move_zeroes(array)
#   new_arr = []

#   array.each do |num|
#     new_arr << num if num != 0
#   end

#   number_of_zeros = array.count(0)
#   number_of_zeros.times { new_arr << 0 }
#   new_arr
# end

def move_zeroes(array)
  0.upto(array.length - 1) do |idx|
    if array[idx] == 0
      array << array[idx]
      array.delete_at(idx)
    end
  end
  array
end

p move_zeroes([0,12,3,0,4]) == [12,3,4,0,0]
p move_zeroes([0]) == [0]
p move_zeroes([0,1,0,3,12]) == [1,3,12,0,0]
p move_zeroes([3,0,9,0,1,20,0,1]) == [3,9,1,20,1,0,0,0]
p move_zeroes([4,2,4,1,3]) == [4,2,4,1,3]
