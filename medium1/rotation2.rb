=begin
Input: Two integers
Output: One integer

Rules:
- Two arguments: number, a digit.
- Move the n digit to the end of the number.
- If n = 2, moving the 2nd to the last digit to the end of the number.
- 735291, 2 => 735219
- When n = 1 the same number is returned.
- Use the rotate_array method from the previous exercise.
- n will be always positive integer.

Algorithm:
- Make an array of digits.
- moving_digit = array[-n]
- Delete the moving digit from the original array.
- Push the deleted digit to the end of the array.
- Join the array and convert it to the integer.
=end

def rotate_rightmost_digits(num, n)
  result = []

  digits = num.digits.reverse
  digits.each do |digit|
    next if digit == digits[-n]

    result << digit
  end

  result << digits[-n]
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# def rotate_rightmost_digits(number, digit)
#   digits_arr = number.digits.reverse
#   moving_digit = digits_arr[-digit]

#   digits_arr.delete(moving_digit)
#   rotated_arr = digits_arr << moving_digit
#   rotated_arr.join.to_i
# end

# def rotate_rightmost_digits(num, digit)
#   chosen_num = num.to_s[-digit]
#   num_string = num.to_s.delete(chosen_num)

#   num_string << chosen_num
#   num_string.to_i
# end