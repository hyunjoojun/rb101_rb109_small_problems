=begin
Input: An integer
Output: An integer

Rules:
- Get a maximum rotation of the input number.
- Ex: 735291
- Rotate it to the left, 352917.
- Keep the first digit fixed in place, rotate the remainders to get 329175.
- Keep the first 2 digits fixed in place, rotate the remainders to get 321759.
- Keep the first 3 digits fixed in place, rotate the remainders to get 321597.
- Keep the first 4 digits fixed in place, rotate the remainders to get 321579.
- Use the rotate_rightmost_digits method from previous exercise.
- Do not have to handle multiple 0s.

Algorithm:
- rotate_rightmost_digits method uses 'digit' to choose a number
  that gets pushed to the back.
- Starting the first digit which is equal to number's length.
- Decrease the digit by 1 and rotate it again.
- Repeat until the digit gets down to 2.
- Return max rotated number.
=end

def max_rotation(number)
  length = number.digits.size

  length.downto(2) do |digit|
    number = rotate_rightmost_digits(number, digit)
  end
  number
end

def rotate_rightmost_digits(num, digit)
  chosen_num = num.to_s[-digit]
  num_string = num.to_s.delete(chosen_num)

  num_string << chosen_num
  num_string.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
