=begin
Input = An integer
Output = An integer

Rules:
- Use multiply method from previous exercise.
- Get the square of a input number.
- Square is multiplying the number by itself.

Algorithm:
- input number * input number
=end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_to_nth(num, n)
  multiply(num, 1) ** n
end

def power(num, nth)
  return 1 if nth == 0
  numbers = []

  nth.times { numbers << num }
  numbers.inject(:*)
end

p square(5) == 25
p square(-8) == 64

p power_to_nth(5, 0) == 1      # true
p power_to_nth(5, 1) == 5      # true
p power_to_nth(5, 2) == 25     # true
p power_to_nth(5, 3) == 125    # true
p power_to_nth(5, 4) == 625    # true
p power_to_nth(5, 5) == 3125   # true

p power(5, 0) == 1      # true
p power(5, 1) == 5      # true
p power(5, 2) == 25     # true
p power(5, 3) == 125    # true
