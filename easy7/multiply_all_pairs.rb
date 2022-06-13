=begin
input: Two arrays of numbers
output: One array of products

rules:
- Input array has numbers.
- Get all the pair of numbers that can be formed between two arrays.
- Get the product of pairs.
- Put numbers into the array.
- Sort the array by increasing value.

Algorithm:
- Set an empty array.
- Iterate through both arrays.
- multiply each numbers.
- push the numbers into the empty array.
- sort the numbers in order.
=end

def multiply_all_pairs(arr1, arr2)
  products = []

  arr1.each do |num1|
    arr2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])