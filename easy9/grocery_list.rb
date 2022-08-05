=begin
Input: A nested array
Output: An array

Rules:
- Input nested array contains inner arrays that contains name of fruit, and a count.
- Conver the nested array into a array with names of fruits.
- The name of fruit should be included n times which is equal to the count.

Algorithm:
- Iterate through each array.
- count.times push the word into the output array.
- Retun the output array.
=end

# def buy_fruit(grocery_list)
#   fruits = []
#   grocery_list.each do |fruit, count|
#     count.times { fruits << fruit }
#   end
#   fruits
# end

def buy_fruit(grocery_list)
  grocery_list.map { |fruit, count| [fruit] * count }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
