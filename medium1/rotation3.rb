=begin
Input: An integer
Output: An integer

Rules:
- Rotating the number means moving the first digit of number to the end of the number.
- For example, number 735291 and we rotate it to the left to get 352917.
- Keep the first digit and rotate remaining digits and we get 329175.
- Keep the first 2 digits and rotate again to get 321759.
- Keep the first 3 digits and rotate again to get 321597.
- Keep the first 4 digits and rotate again to get the final number 321579.
- This is called max rotation of number.
- Write a method that does the max rotation to input integer.
- Use the rotate_rightmost_digits method from previous exercise.
- Do not have to handle multiple 0s.

Algorithm:
- Repeat the rotating number using rotate_rightmost_digits method.
- Get the size of number, how many digits does it have?
- Set this to variable count.
- Each time we rotate the number, decrement the count by 1.
- Repeat the process until count is > 1.
- Return the rotated number.
=end

def max_rotation(num)
  count = num.digits.size
  while count > 1
    num = rotate_rightmost_digits(num, count)
    count -= 1
  end
  num
end

def rotate_rightmost_digits(number, digit)
  digits_arr = number.digits.reverse

  chosen_num = digits_arr.delete_at(-digit)
  digits_arr << chosen_num

  digits_arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
