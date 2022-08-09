=begin
Input: Two arrays
Output: One array

Rules:
- There are two arrays of numbers.
- Return a new array that contains the product of every pair of numbers.
- The new array elements are sorted by increasing value.
- Both input arrays are non-empty.

Algorithm:
- arr1.product(arr2) = all pairs
- Multiply all the pairs to get the elements of the new array.
- Sort the values.
- Return new array.
=end

def multiply_all_pairs(arr1, arr2)
  pairs = arr1.product(arr2)
  pairs.map { |pair| pair.inject(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
