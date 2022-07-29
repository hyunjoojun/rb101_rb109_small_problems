=begin
Input = A string
Output = An integer

Rules:
- Convert numbers in string to the integer.
- Do not use String#to_i method nor Integer().
- Do not worry about invalid characters.
- All characters will be numbers.
- For '+' return a positive number.
- For '-' return a negative number.
- Use the string_to_integer method from the previous exercise.

Algorithm:
- Write a hash that converts string to number.
- Split all the characters in input string.
- Check if first character has '+' or '-'.
- If the first character is '-', return number with -.
- All other cases, return just number.
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

def string_to_signed_integer(string)
  clean_str = string.delete('^0-9')
  number = string_to_integer(clean_str)

  string[0] == '-' ? -number : number
end

# def string_to_signed_integer(string)
#   if string[0] == '-'
#     -string_to_integer(string[1..-1])
#   else
#     string_to_integer(string.delete('^0-9'))
#   end
# end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
