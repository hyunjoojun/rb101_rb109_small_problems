=begin
Input: An array
Output: A new array

Rules:
- Move the first element of input array to the end of the array.
- The original array should not be modified.
- Do not use the method Array#rotate or Array#rotate!.
- The array may have only one element.

Algorithm:
- Copy the original array.
- Remove the first element of the copied array and set it equal to a variable.
- Push the first element of the array to the copied array.
- Return the copide array.
=end

def rotate_array(array)
  copied_arr = array.dup

  first_ele = copied_arr.shift
  copied_arr << first_ele

  copied_arr
end

def rotate_string(str)
  chars = str.chars
  rotated_str = rotate_array(chars)
  rotated_str.join
end

def rotate_integer(int)
  digits = int.digits.reverse
  rotated_digits = rotate_array(digits)
  rotated_digits.join
end

p rotate_string("hello")

p rotate_integer(1234)

p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
