# Given a 2D integer array nums where nums[i] is a non-empty array of distinct positive
# integers, return the list of integers that are present in each array of nums sorted in
# descending order.

# Input: Nested Array
# Output: An array of numbers

# Rules:
# Return all the numbers that exist in all of the inner arrays.
# The numbers must be sorted in descending order. (biggest, lowest)
# If none matching, return an empty array.

# Find the shortest array by its length.
# Create an empty array.
# Iterate through the numbers of the shortest array.
# Check if other arrays have the same numbers.
# If they have the numbers, push it into a new array.
# Return the new array.

def intersection(nested_array)
  shortest_arr = nested_array.min_by { |array| array.length }
  result = []

  shortest_arr.each do |num|
    result << num if nested_array.all? { |array| array.include?(num) }
  end
  result.sort.reverse
end

p intersection([[3, 1, 2, 4, 5], [1, 2, 3, 4], [3, 4, 5, 6]]) == [4, 3]
p intersection([[1, 2, 3], [4, 5, 6]]) == []
p intersection([[2, 4, 3, 5], [1, 2, 6, 5], [3, 2, 1, 5]]) == [5, 2]
p intersection([[6, 2, 4, 4], [5, 1, 1, 6], [0, 4, 7, 6]]) == [6]
p intersection([[4, 5, 3], [2, 2, 2], [3, 4, 5]]) == []
