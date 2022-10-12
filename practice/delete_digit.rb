# Given an integer n, find the maximal number you can obtain by deleting exactly one digit
# of the given number.

# Input: An Integer
# Output: An interger(deleted digit)

# Rules:
# We are required to delete one digit.
# But we have to make the maximal number even with deleting one digit.

def delete_digit(num)
  digits = num.digits.reverse
  numbers = []

  0.upto(digits.length - 1).map do |idx|
    numbers << digits[0...idx] + digits[idx + 1..-1]
  end
  numbers.max.join.to_i
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
p delete_digit(674209) == 74209
