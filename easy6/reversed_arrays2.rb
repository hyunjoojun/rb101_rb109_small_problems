=begin
input: array
output: reversed elements array

rules:
- Method does not mutate the original array.
- May not use reverse or reverse! method.
- If there is one element, return the same array.

Algorithm:
- Iterate through each element
- Unshift each element in an empty array.
- Return new array.
=end

def reverse(arr)
  arr.each_with_object([]) { |ele, new_arr| new_arr.unshift(ele) }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true