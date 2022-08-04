=begin
Input: An integer
Output: An integer

Rules:
- Return 2 times input integer if the integer is not double number.
- If the input integer is double number, return as-is.
- Double number is a number with even number of digits.
- Double number has the same left side digits and right side digits.

Algorithm:
- Convert digits into string.
- Get the middle index if string.length is even.
- Split the string into two using the middle index.
- Check if the left side is equal to the right side.
- If it's not equal, do integer * 2.
- It they are equal return iteger.
=end

def twice(num)
  digits_length = num.to_s.length

  if digits_length.even?
    middle = digits_length / 2
    left = num.to_s[0..middle - 1]
    right = num.to_s[middle..-1]

    left == right ? num : num * 2
  else
    num * 2
  end
end

# def double_number?(number)
#   string_num = number.to_s
#   center = string_num.size / 2
#   left_side = string_num[0..center - 1]
#   right_side = string_num[center..-1]

#   string_num.size.even? && left_side == right_side
# end

# def twice(number)
#   double_number?(number) ? number : number * 2
# end

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
