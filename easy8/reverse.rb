=begin
input: positive integer
output: reversed integer

rules:
- Return number with digits reversed.
- One digit number returns the same number.
- Input integer is always positive.
- No leading zeros in output.

Algorithm:
- Covert integer to string.
- Reverse the string.
- Convert string to integer.
=end

def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
