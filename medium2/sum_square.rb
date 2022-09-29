# Write a method that computes the difference between the square of the sum of the first n
# positive integers and the sum of the squares of the first n positive integers.

# Input: An Integer
# Output: An integer(difference)

# Rules:
# Starting from 1 to input number.
# Sum up the numbers then square it to get the square of the sum.
# Square each numbers then add all together to get the sum of the squares.
# Get the difference between the two.

# Ex: input number = 3
# Add all the numbers from 1 to 3.
# Square the sum.
# Square each numbers, and add to get the sum.

def sum_square_difference(num)
  sq_sum = (1..num).sum**2
  sum_sq = (1..num).map { |n| n**2 }.sum
  sq_sum - sum_sq
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
