=begin
Input: Two integers
Output: One integer

Rules:
- Rotate the last n digits of the number.
- The first argument is the number, second argument is n digits.
- If the second argument is 1, return the same number.
- Use the rotate_array method from previous exercise.
- The second argument will always be positive.

Algorithm:
- The second argument n digits will be taken out and placed in the back of the number.
- We are moving one chosen number to the end.
- Set a variable chosen_num.
- Delete that chosen_num and push it back to the number.
- Return the rotated number.
=end

def rotate_rightmost_digits(num, digit)
  chosen_num = num.to_s[-digit]
  num_string = num.to_s.delete(chosen_num)

  num_string << chosen_num
  num_string.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
