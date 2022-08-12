=begin
Input: An integer (nth)
Output: An integer (nth number in fibonacci numbers)

Rules:
- Write a recursive method that returns a number that's nth of fibonacci numbers.
- nth is the input integer of the method.

Algorithm:
- Fibonacci numbers = 1, 1, 2, 3, 5, 8, 13...
- If nth = 1, return 1.
- If nth = 2 return 1.
- This means in case of nth <= 2 return 1.
- If nth = 3, we have to add two previous numbers together.
=end

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
