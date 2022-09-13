=begin
Input: An integer
Output: Difference between the sum (integer)

Rules:
- Get the difference between the square of the sum and sum of the squares.
- The input number is an integer.
- Get the sum of 1 through the input number and square it to get the sum square.
- Get the square of 1 to input number and add them together to get the square sum.
- Get the difference between the two.

Algorithm:
- sum_sq = (1..num).sum**2
- sq_sum = (1..num).map { |num| num**2 }.sum
- sum_sq - sq_sum
=end

def sum_square_difference(num)
  sum_sq = (1..num).sum**2
  sq_sum = (1..num).map { |n| n**2 }.sum

  sum_sq - sq_sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
