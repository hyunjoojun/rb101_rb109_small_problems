=begin
Input: An array
Output: A rotated array

Rules:
- Move the first element of the input array to the end of the array.
- Do not mutate the input array.
- Do not use rotate methods.

Algorithm:
- Create an empty array for the result.
- Push the elements in order except the first element.
- At the end, push the first element.
=end

def rotate_array(array)
  result = []

  array.each do |num|
    next if num == array[0]

    result << num
  end

  result << array[0]
  result
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
