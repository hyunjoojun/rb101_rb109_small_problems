=begin
input: Two arrays
output: One array

rules:
- The arrays have list of numbers.
- A pair of numbers that have the same index gets multiplied.
- The product numbers are returned in an array.
- Both arrays have the same number of elements.

Algorithm:
- Set an empty array.
- Iterate through the arrays to get product.
- Push the product into empty array.
- Return new array.
=end

# def multiply_list(arr1, arr2)
#   products = []

#   arr1.each_with_index do |num, idx|
#     products << num * arr2[idx]
#   end
#   products
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]