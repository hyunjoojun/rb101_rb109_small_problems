# Given two non-negative integers num1 and num2 represented as strings,
# return the product of num1 and num2, also represented as a string.
# Note: You must not use any built-in BigInteger library or convert
# the inputs to integer directly.
# Example 1:
# Input: num1 = "2", num2 = "3"
# Output: "6"
# Example 2:
# Input: num1 = "123", num2 = "456"
# Output: "56088"

NUMBERS = %w[0 1 2 3 4 5 6 7 8 9].freeze

def convert_to_num(str)
  digits = []
  number = 0
  str.chars.each do |digit|
    digits << NUMBERS.index(digit)
  end
  digits.each do |digit|
    number = 10 * number + digit
  end
  number
end

def multiply(num1, num2)
  int1 = convert_to_num(num1)
  int2 = convert_to_num(num2)
  (int1 * int2).to_s
end

p multiply('123', '456') == '56088'
