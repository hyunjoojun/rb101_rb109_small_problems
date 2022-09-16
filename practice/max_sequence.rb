=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous
subsequence in an array of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]
Easy case is when the array is made up of only positive numbers and the maximum sum
is the sum of the whole array. If the array is made up of only negative numbers,
return 0 instead.

Empty array is assumed to have 0 greatest sum.
Note the empty array is also a valid subarray.

Input: Array of numbers
Output: The maximum sum (integer)

Rules:
- Return the maximum sum of the subarray.
- The subarray has to be consecutive, in order.
- The subarray's length must be >= 2.

Algorithm:
- Get all the subarrays.
  - Setup an empty array for subarrays.
  - Starting index1 to index2, indexs increases by 1
  until index is equal to array's length - 1.
- Get the sum of each subarrays.
- Return the biggest number.
=end

def subarrays(array)
  subarrays = []

  0.upto(array.length - 1) do |idx1|
    idx1.upto(array.length - 1) do |idx2|
      subarrays << array[idx1..idx2]
    end
  end
  subarrays
end

def max_sequence(array)
  return 0 if array.all? { |num| num < 0 }

  subarrays = subarrays(array)
  subarrays.max_by { |sub| sub.sum }.sum
end

p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([]) == 0
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
