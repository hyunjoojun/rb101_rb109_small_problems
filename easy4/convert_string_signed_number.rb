=begin
input: string (sign and numbers)
output: signed integer

rules:
- string may have + or - sign
- + number return positive integer
- - number return negative integer
- no sign return positive integer
- assume the string always contain valid number
- use string_to_integer method

Algorithm:
- if string starts with '-' then -string_to_integer
- if string starts with '+' then string_to_integer
- if string does not have any sign then string_to_integer
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
  result = string_to_integer(string.delete('^a-z0-9'))
  string[0] == '-' ? -result : result
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100