=begin
Input: An integer
Output: A negative integer

Rules:
- If the input integer is positive, return negative number.
- If the input integer is negative, return the original number.
- If the input integer is 0, return 0.

Algorithm:
- Check if number is positive, if it is return the number with '-'
- All other numbers, return the original number.
=end

def negative(num)
  num.positive? ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
