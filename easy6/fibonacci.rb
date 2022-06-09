require 'pry'
=begin
input: number of digits
output: index of first number that has the input number of digits

rules:
- The Fibonacci numbers are the list of numbers that has first 2 numbers as 1.
- Each subsequent number is the sum of the two previous numbers.
- The Fibonacci numbers = 1 1 2 3 5 8 13 21 34 55 89 144 ...
- Input number is always greater than or equal to 2.
- Find the index of the first number that has input number of digits.

Algorithm:
- Set an starting array and starting index.
- Add the last two numbers from the array.
- The sum is pushed to the array.
- Increment the index.
- Repeat the process until the last number's length is equal to input number.
- Return index.
=end

def find_fibonacci_index_by_length(number_digits)
  arr = [1, 1]
  index = 2

  loop do
    arr << arr.last(2).sum
    index += 1

    break if arr.last.to_s.length == number_digits
  end
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
