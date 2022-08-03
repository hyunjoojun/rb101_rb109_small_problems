=begin
Input: Two arrays
Output: An array

Rules:
- Multiply two numbers that have the same index from two arrays.
- Create a new array with products.
- Two arrays have the same number of elements.

Algorithm:
- Use map method to return a new array.
- Use index to pair two numbers and make a new array.
=end

# def multiply_list(arr1, arr2)
#   arr1.map.with_index do |num, idx|
#     num * arr2[idx]
#   end
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |num| num.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
