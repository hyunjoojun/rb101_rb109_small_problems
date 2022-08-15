=begin
Input = A string
Output = An integer

Rules:
- Convert a string into an integer.
- Do not use to_i method.

Algorithm:
- Create an array that contains string numbers as elements.
- Split the string into characters.
- Iterate through each characters and get the index of created array.
- Get the array of integers.
- Conver the array into the integers.
=end

STRING_NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def string_to_integer(string)
  digits = string.chars.map do |num|
    STRING_NUMBERS.index(num)
  end
  convert_array_to_num(digits)
end

def convert_array_to_num(arr)
  value = 0
  arr.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321')
p string_to_integer('570')
