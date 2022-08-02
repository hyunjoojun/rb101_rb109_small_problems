=begin
Input: Two arrays
Output: An array

Rules:
- Combine the two input arrays.
- All elements should be taken in alternation.
- Both arrays are non-empty.
- Both arrays have the same number of elements.

Algorithm:
- Shift method takes the first element in the array.
- Set up an empty array.
- Take first element from the first array push it into the empty array.
- Take first element from the second array push it into the new array.
- Take second element from the first array push it into the new array.
- Take second element from the second array push it into the new array.
- Repeat this until both arrays are empty.
- Return the new array.
=end

# def interleave(arr1, arr2)
#   new_arr = []

#   loop do
#     new_arr << arr1.shift
#     new_arr << arr2.shift
#     break if arr2.empty?
#   end

#   new_arr
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
