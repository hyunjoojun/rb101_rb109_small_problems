=begin
Input: An array
Output: Nested arrays

Rules:
- Divide the array in half and create a pair of nested arrays.
- If the original array contains an odd number of elements,
the middle element should be placed in the first half array.
- If the input is an empty array, return two empty nested arrays.

Algorithm:
- Divide the elements by its index.
- Get the middle index: (array.length / 2.0).ceil
- Use partition method with index.
=end

def halvsies(arr)
  arr.partition.with_index do |_, idx|
    idx < (arr.length / 2.0).ceil
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
