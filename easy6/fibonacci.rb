=begin
Input: An integer
Output: An integer

Rules:
- The first 2 numbers for the fibonacci numbers are 1.
- The number followed by the first 2 numbers is the sum of two previous numbers.
- The pattern continues..
- Input number is the number of digits.
- Return the index of first fibonacci number that has the input number of digits.
- The first number has index 1.
- Input number will always be greater than or equal to 2.

Algorithm:
- Set up an array [1, 1]
- Push the sum of the last two numbers of the array.
- The array will give the fibonacci numbers.
- Repeat pushing until we get input number of digits.
- Return the index.
=end

def find_fibonacci_index_by_length(digits)
  fibs = [1, 1]

  loop do
    fibs << fibs.last(2).sum
    break if fibs.last.digits.length == digits
  end

  fibs.length
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
