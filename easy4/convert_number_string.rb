=begin
Input = An integer
Output = A string

Rules:
- Convert an integer to a string.
- Do not use Integer#to_s method nor String().
- Input number is 0 or positive integer.

Algorithm:
- Write an array of digits in strings.
- Split all the characters in input number to get digits.
- Iterate through all the digits and convert it to string.
- Combine the string.
=end

# STRINGS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   digits = number.digits.reverse

#   chars = digits.map { |digit| STRINGS[digit] }
#   chars.join
# end

def integer_to_string(number)
  number.digits.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
