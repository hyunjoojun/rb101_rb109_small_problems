=begin
Input: An integer (nth)
Output: An integer (nth number in fibonacci numbers)

Rules:
- Do not use recursion and rewrite fibonacci method.
- Fibonacci numbers starts with two 1s.
- Add previous 2 numbers to get the next number.
- The input integer will be n and the method outputs the nth number.

Algorithm:
- Fibonacci numbers = [1, 1]
- Add two numbers until we get nth number.
- Return the last number of the array.
=end

def fibonacci(nth)
  fibs = [1, 1]

  until fibs.length == nth
    fibs << fibs.last(2).sum
  end
  fibs.last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
