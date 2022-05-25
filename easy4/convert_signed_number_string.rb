=begin
input: integer (neg or pos)
output: string (with sign and numbers)

rules:
- use integer_to_string method
- negative integer gets '-' in front
- positive integer gets '+' in front

Algorithm:
- if number < 0 add '-'
- if number > 0 add '+'
- if number == 0 return '0'
=end

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

def integer_to_string(integer)
  integer.digits.join.reverse
end

def signed_integer_to_string(number)
  return '0' if number == 0
  sign = number > 0 ? '+' : '-'
  integer_to_string(number.abs).prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'