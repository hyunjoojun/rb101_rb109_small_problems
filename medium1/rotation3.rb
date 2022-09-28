=begin
Input: An integer
Output: An integer

Rules:
- 735291, rotate it to the left 352917. (Moving the first number to the end)
- 352917, keep the 1st digit in place, rotate the remainings 329175.
- 329175, keep the 1st 2 digits, rotate to get 321759.
- 321759, keep the 1st 3 digits, rotate to get 321597.
- 321597, keep the 1st 4 digits, rotate to get 321579.
- Called the max rotation.
- Do not handle multiple 0s.
- Use rotate_rightmost_digits from the previous exercise.

Algorithm:
- Split the number into digits array.
- We are moving the number that starts from index 0 through index is
the array's length - 2.
- We are moving index 0, index 1, index 2, so on until index is equal to
the array's length - 2.
- Since the rotate_rightmost_digits method start from the back, we can change the
index starting from -length until the index is -2.
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

def max_rotation(number)
  length = number.digits.size

  length.downto(2) do |index|
    number = rotate_rightmost_digits(number, index)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
