=begin
Input: Two arrays
Output: One array

Rules:
- Two arrays contains list of numbers.
- The new array contains the product of every pair of numbers
that can be formed between the elements of the two arrays.
- The new array should be sorted by increasing value.
- Both arrays contains at least one number.

Algorithm:
- Get all pairs between the elements of the two arrays.
- Multiply them and make new array.
=end

# def multiply_all_pairs(arr1, arr2)
#   products = []
#   arr1.each do |item_1|
#     arr2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
