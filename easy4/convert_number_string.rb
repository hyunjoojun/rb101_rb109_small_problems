=begin
input: integer
output: string

rules:
- input is 0 or positive integer
- do not use standard methods such as to_s, String(), format

Algorithm:
- Get all the digits in the integer(how?)
- Create an array with all the integers
- 'Join' the array to get the string
=end

# def integer_to_string(integer)
#   integer.digits.join.reverse
# end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'