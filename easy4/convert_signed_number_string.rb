=begin
Input = An integer
Output = A string

Rules:
- Convert an integer to a string.
- Do not use Integer#to_s method nor String().
- Input number can be negative.
- If input number is negative, return string with '-'.
- If input number is positive, return string with '+'.
- If input number is 0, return '0'.
- Use integer_to_string method from previous exercise.

Algorithm:
- Write an array of digits in strings.
- Split all the characters in input number to get digits.
- Iterate through all the digits and convert it to string.
- Combine the string.
- If input number has - in front, return '-' and numbers.
- If input number is positive, return '+' and numbers.
=end

def integer_to_string(number)
  number.digits.reverse.join
end

# def signed_integer_to_string(number)
#   if number == 0
#     '0'
#   elsif number < 0
#     '-' + integer_to_string(number * -1)
#   else
#     '+' + integer_to_string(number)
#   end
# end

def signed_integer_to_string(number)
  return '0' if number == 0
  sign = number > 0 ? '+' : '-'
  integer_to_string(number.abs).prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
