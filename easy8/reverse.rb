=begin
Input: Integer
Output: Integer

Rules:
- Return the number with its digits reversed.
- No leading zeros in return value.

Algorithm:
- Use digits method.
=end

def reversed_number(num)
  num.digits.join.to_i
end

def reversed_number2(num)
  digits_size = num.to_s.length
  new_num = []

  digits_size.times do |idx|
    new_num << num.to_s[idx]
  end

  new_num.join.reverse.to_i
end

def reversed_number3(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
