=begin
input: integer
output: negative integer

rules:
- Positive or negative number return negative number.
- If input is 0, return 0.

Algorithm:
- If input is positive number, return -number.
- All other cases return the original input number.
=end

def negative(number)
  number.positive? ? -number : number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
