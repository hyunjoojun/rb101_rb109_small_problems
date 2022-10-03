# Given a List [] of n integers , find minimum number to be inserted in a list, so that sum
# of all elements of list should equal the closest prime number .
# List size is at least 2 .
# List's numbers will only positives (n > 0) .
# Repetition of numbers in the list could occur .
# The newer list's sum should equal the closest prime number .
# Input >> Output Examples
# 1- minimumNumber ({3,1,2}) ==> return (1)
# Explanation:
# Since , the sum of the list's elements equal to (6) , the minimum number to be inserted
# to transform the sum to prime number is (1) , which will make the sum of the List equal
# the closest prime number (7) .
# 2-  minimumNumber ({2,12,8,4,6}) ==> return (5)
# Explanation:
# Since , the sum of the list's elements equal to (32) , the minimum number to be inserted
# to transform the sum to prime number is (5) , which will make the sum of the List equal
# the closest prime number (37) .
# 3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)
# Explanation:
# Since , the sum of the list's elements equal to (189) , the minimum number to be inserted
# to transform the sum to prime number is (2) , which will make the sum of the List equal
# the closest prime number (191).

# Input: An array of numbers
# Output: An Integer

# Rules:
# Prime number: divisible by 1 and itself only.
# We are looking for a prime number that is bigger than the sum of given numbers.
# Return the difference between the next prime number and the sum of the array.

# Find the sum of the array.
# Find the next prime number.
# It cannot be divisible by any other numbers.
# Find the difference in between the prime number and the sum.

def minimum_number(numbers)
  sum = numbers.sum
  prime_num = next_prime_number(sum)
  prime_num - sum
end

def next_prime_number(number)
  (number..).each do |num|
    return num if (2...number).all? { |divisor| num % divisor != 0 }
  end
end

# def next_prime_number(number)
#   loop do
#     return number if (2...number).all? { |divisor| number % divisor != 0 }

#     number += 1
#   end
# end

p minimum_number([3, 1, 2]) == 1
p minimum_number([5, 2]) == 0
p minimum_number([1, 1, 1]) == 0
p minimum_number([2, 12, 8, 4, 6]) == 5
p minimum_number([50, 39, 49, 6, 17, 28]) == 2
