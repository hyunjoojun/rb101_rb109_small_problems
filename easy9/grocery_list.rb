=begin
Input: Nested array
Output: An array

Rules:
- The nested array has the inner arrays of fruits and quantities.
- The method buy_fruit has one parameter which is the nested array.
- The output array should have correct number of each fruit.
- Ex: If there are 3 'apples' output array should have 3 elements of 'apples'.

Algorithm:
- Iterate through the nested array.
- Set up an empty array.
- Push the fruit element into the empty array.
- Use the quantities to push them n amount of times.
=end

def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    item[1].times { expanded_list << item[0] }
  end
  expanded_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
