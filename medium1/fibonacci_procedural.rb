=begin
Input: An integer (nth)
Output: An integer (nth number in fibonacci numbers)

Rules:
- Write a method that returns a number that's nth of fibonacci numbers.
- nth is the input integer of the method.
- Do not use recursive method.

Algorithm:
- Fibonacci numbers starts with two 1s = [1, 1]
- Add two numbers until its length = input number
- Return the last number of the array.
=end

def fibonacci(nth)
  numbers = [1, 1]

  loop do
    numbers << numbers.last(2).sum
    break if numbers.length == nth
  end

  numbers.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
