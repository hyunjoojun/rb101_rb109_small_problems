=begin
Input = A string
Output = An integer

Rules:
- Convert numbers in string to the integer.
- Do not use String#to_i method nor Integer().
- Do not worry about invalid characters.
- All characters will be numbers.
- Do not worry about + or -.

Algorithm:
- Write a hash that converts string to number.
- Split all the characters in input string.
- Iterate through all the characters and convert it to integer.
- Combine the integers.
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
