=begin
Input: An integer (nth)
Output: An integer (nth number in fibonacci numbers)

Rules:
- Return the last digit of the number that's nth of fibonacci numbers.
- nth is the input integer of the method.

Algorithm:
- Fibonacci numbers starts with two 1s = [1, 1]
- Add two numbers until its length = input number
- Get the last number of the array.
- Return the last digit = (number % 10)
=end

# def fibonacci_last(nth)
#   fibs = [1, 1]
#   until nth == fibs.length do
#     fibs << fibs.last(2).sum
#   end
#   fibs.last % 10
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
