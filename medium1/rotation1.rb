=begin
Input: An array
Output: A rotated array

Rules:
- The original array shoud not be modified.
- Move the first element to the end of the array.
- Do not use rotate method.

Algorithm:
- Copy the original array..
- Save the first element to a variable.
- Delete the first element, and push the first element to the array.
- Return the new array.
=end

def rotate_array(array)
  new_arr = array.clone
  first_element = new_arr.shift
  new_arr << first_element

  new_arr
end

def rotate_string(string)
  array = string.chars
  rotated_str = rotate_array(array)
  rotated_str.join
end

def rotate_integer(integer)
  array = integer.digits.reverse
  rotated_digits = rotate_array(array)
  rotated_digits.join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string('hello') == 'elloh'
p rotate_integer(123) == 231
