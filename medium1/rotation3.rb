=begin
Input: An integer
Output: An integer

Rules:
- Return the maximum rotation of the input number.
- Use rotate_rightmost_digits method from previous exercise.
- Do not have to handle multiple 0s.
- Example of maximun rotation:
- 735291 rotate it to the left 352917.
- Keep the first digit fixed in place, rotate the remaining, 329175.
- Keep the first 2 digits fixed in place, rotate the remaining, 321759.
- Keep the first 3 digits fixed in place, rotate the remaining, 321597.
- Keep the first 4 digits fixed in place, rotate the remaining, 321579.

Algorithm:
- Repeat the rotating number using rotate_rightmost_digits method.
- Get the size of number, how many digits does it have?
- Set this to variable count.
- Each time we rotate the number, decrement the count by 1.
- Repeat the process until count is > 1.
- Return the rotated number.
=end

def rotate_rightmost_digits(num, digit)
  chosen_num = num.to_s[-digit]
  num_string = num.to_s.delete(chosen_num)

  num_string << chosen_num
  num_string.to_i
end

def max_rotation(num)
  count = num.digits.size
  while count > 1
    num = rotate_rightmost_digits(num, count)
    count -= 1
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
