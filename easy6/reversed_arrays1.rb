=begin
Input: An array
Output: An array

Rules:
- Write your own Array#reverse method.
- Mutate the input array.

Algorithm:
- Create two index.
- Increment one index, decrement another index.
- Swith the elements that's associated with the index.
=end

# def reverse!(arr)
#   new_arr = []
#   new_arr << arr.pop until arr.empty?
#   arr << new_arr.shift until new_arr.empty?
#   arr
# end

def reverse!(list)
  index = 0
  reverse_index = -1
  return list if list.size <= 1

  loop do
    list[index], list[reverse_index] = list[reverse_index], list[index]
    index += 1
    reverse_index -= 1
    break if index == (list.length / 2)
  end

  list
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
