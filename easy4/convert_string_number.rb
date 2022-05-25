=begin
input: numbers in a string
output: integer

rules:
- Convert numbers in a string to integers
- All strings will be numeric.
- Don't use to_i or Integer() methods.

Algorithm:
- Create a hash that has key of string numbers and value of integers.
- Split input string into array.
- Iterate through each numbers and convert to digits using the hash.
- Get a new array of integers.
- Iterate through each numbers to get the final integer.
    - how??
=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
