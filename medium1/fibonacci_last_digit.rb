=begin
Input: An integer (nth)
Output: The last digit of fibonacci number

Rules:
- Return the last digit of nth fibonacci number.
- nth is the input number.

Algorithm:
- The last digit repeats every 60 numbers.
- We can get the last digit with % 10.
=end

# def fibonacci(nth)
#   fibs = [1, 1]

#   (nth - 2).times { fibs << fibs.last(2).sum }
#   fibs.last
# end

# def fibonacci_last(nth)
#   fibonacci(nth % 60) % 10
# end

def fibonacci_last(nth)
  fibs = [1, 1]

  ((nth % 60) - 2).times { fibs << fibs.last(2).sum }
  fibs.last % 10
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123456789987745) # -> 5
