# Create a method that takes two lists of numbers sorted in ascending order and returns an
# array of numbers which are common to both the input arrays.

# Input: Two arrays
# Output: An Array

# Rules:
# There are two arrays that contain numbers.
# If a number exists in both of the arrays return it as an array.
# Does the output has to be descending order?

# Select the shorter array.
# Create an empty array for results.
# Iterate through the array and check if the number exists in the other array.
# If the number exists in the longer array, push the number into the results array.
# Return the results array.

def common_elements(arr1, arr2)
  shorter_arr = arr1.length > arr2.length ? arr2 : arr1
  longer_arr = shorter_arr == arr1 ? arr2 : arr1
  results = []

  shorter_arr.each do |num|
    results << num if longer_arr.include?(num)
  end
  results.reverse
end

p common_elements([-1, 3, 4, 6, 7, 9], [1, 3]) == [3]
p common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10]) == [7, 4, 3, 1]
p common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5]) == [5, 4, 2, 1]
p common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15]) == []
p common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 2, 4, 5]) == [5, 4, 2, 2, 1]
