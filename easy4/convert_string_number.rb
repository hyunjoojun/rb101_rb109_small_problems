=begin
Input = A string
Output = An integer

Rules:
- Convert a string into an integer.
- Do not use to_i method.

Algorithm:
- Create an array of string numbers.
- Split the input string into characters.
- Iterate through the characters array.
- return the index of the character in string numbers array.
- After we get the index array which are the digits, convert it to one integer.
=end

STR_NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def string_to_integer(string)
  digits = string.chars.map do |char|
    STR_NUMBERS.index(char)
  end

  sum = 0
  digits.each { |digit| sum = (sum * 10) + digit }
  sum
end

p string_to_integer('4321')
p string_to_integer('570')
