# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6
# and 9. The sum of these multiples is 23.
# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the
# number passed in. Additionally, if the number is negative, return 0
# (for languages that do have them).
# Note: If the number is a multiple of both 3 and 5, only count it once.

# Input: An Integer
# Output: An integer(sum)

# Rules:
# Get multiples of 3 or 5 for 1 through input number.
# Return the sum by adding all the multiples.
# If the number is negative, return 0.

# Iterate through numbers 1 through n.
# Select all the numbers that are divisible by 3 or 5.
# Sum the numbers.

def solution(number)
  multiples = (1...number).select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  multiples.sum
end

p solution(-4) == 0
p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
