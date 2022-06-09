=begin
input: array
output: reversed elements array

rules:
- Method has to mutate the original array.
- May not use reverse or reverse! method.
- If there is one element, return the same array.

Algorithm:
- Set an empty array.
- Use pop method to take the last element of the original array.
- push element into the new empty array.
- Shift all the elements back to original array.
=end

def reverse!(arr)
  new_arr = []
  new_arr << arr.pop until arr.empty?
  arr << new_arr.shift until new_arr.empty?
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list2 = %w(a b e d c)
p reverse!(list2) == ["c", "d", "e", "b", "a"] # true
p list2 == ["c", "d", "e", "b", "a"] # true

list3 = ['abc']
p reverse!(list3) == ["abc"] # true
p list3 == ["abc"] # true

list4 = []
p reverse!(list4) == [] # true
p list4 == [] # true
