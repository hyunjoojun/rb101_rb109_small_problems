=begin
Input: An integer
Output: Difference between the sum (integer)

Rules:
- Starting from 1 to input number, get the sum square and square sum.
- Return the difference between the sum square and square sum.
- The sum square is square of the sum of all the numbers from 1 to input number.
- The square sum is sum of all the squares from 1 to input number.

Algorithm:
- sum = (1..n).sum (The sum of 1 to n number.)
- sum_sq = sum ** 2
- square = (1..n).map { |num| num ** 2 }
- sq_sum = square.sum
- diff = sum_sq - sq_sum
=end

def sum_square_difference(num)
  sum = (1..num).sum
  sum_sq = sum ** 2

  square = (1..num).map { |n| n ** 2 }
  sq_sum = square.sum

  sum_sq - sq_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
