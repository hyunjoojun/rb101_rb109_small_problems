=begin
Input: Two arrays
Output: An array

Rules:
- Combine two input arrays into one array.
- There should be no repeated elements.

Algorithm:
- Use concat to combine the arrays.
- Use uniq to get rid of any repeats.
=end

def merge1(arr1, arr2)
  arr1.concat(arr2).uniq
end

def merge2(array_1, array_2)
  array_1 | array_2
end

def merge(arr1, arr2)
  new_arr = []

  new_arr << arr1 << arr2
  new_arr.flatten.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]