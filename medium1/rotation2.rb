=begin
Input: Two integers
Output: An integer

Rules:
- Rotate the last n digits of a number.
- First argument is a number.
- Second argument represents the last n digits of the first argument.
- When the second argument is 1, the method returns the original number.
- Use the rotate_array method from previous exercise.
- The second argument is always positive number.

Algorithm:
- Convert number into an array of digits.
- Delete the last n digit and set it to a variable, chosen_num.
- Push the chosen_num into the array.
- Join the numbers together to return an integer.
=end

def rotate_rightmost_digits(number, digit)
  digits_arr = number.digits.reverse

  chosen_num = digits_arr.delete_at(-digit)
  digits_arr << chosen_num

  digits_arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
