=begin
Input: An array
Output: An array

Rules:
- Reverse the elements of the input array.
- Do not mutate the input array, return a new array.
- Do not use reverse method.
- Do not use the method from previous exercise.

Algorithm:
- Iterate through input array using each_with_object.
- Return a new array using prepend.
=end

# def reverse(arr)
#   arr.each_with_object([]) do |ele, new_arr|
#     new_arr.prepend(ele)
#   end
# end

def reverse(array)
  array.inject([], :prepend)
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
