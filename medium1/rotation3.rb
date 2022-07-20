=begin
Input: An integer
Output: An integer

Rules:
-

Algorithm:
-
=end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
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
