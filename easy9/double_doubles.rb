=begin
input: integer
output: integer

rules:
- If the input integer is double number, return the same number.
- If the input integer is not double number, return number * 2.
- Double number has even number of digits.
- Double number has same left side digits and right side digits.

Algorithm:
- Check if input integers has even number of digits.
- If it has even number of digits, compare left side digits to the right side digits.
- If left side digits are equal to right side digits, return original digits.
- For all other cases, return the double of input number.
=end

def double_number?(number)
  string_num = number.to_s
  center = string_num.size / 2
  left_side = string_num[0..center - 1]
  right_side = string_num[center..-1]

  string_num.size.even? && left_side == right_side
end

def twice(number)
  double_number?(number) ? number : number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10