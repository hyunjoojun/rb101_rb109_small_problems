=begin
Input: An array
Output: An array

Rules:
- Reverse the elements of the input array.
- Mutate the array, so object id stays the same.
- Do not use reverse method.

Algorithm:
- Set an empty array.
- Use pop method to take the last element of the original array.
- push element into the new empty array.
- Shift all the elements back to original array.
=end

# def reverse!(arr)
#   left_idx = 0
#   right_idx = -1

#   while left_idx < arr.length / 2
#     arr[left_idx], arr[right_idx] = arr[right_idx], arr[left_idx]
#     left_idx += 1
#     right_idx -= 1
#   end
#   arr
# end

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

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
