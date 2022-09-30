# You are given array of integers, your task will be to count all pairs in that array and
# return their count.
# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0,
# 0, 0] the return value is 2 (= 2 pairs of 0s)

# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
# Examples
# [1, 2, 5, 6, 5, 2]  -->  2
# ...because there are 2 pairs: 2 and 5
# [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
# ...because there are 4 pairs: 2, 20, 6 and 2 (again)

# Input: An Array
# Output: An integer (number of pairs)

# Rules:
# The array has numbers as its elements.
# Any number that appears two times in the array is considered a pair
# Count number of pairs and return it as an integer.
# Count each pair only once.

# Get unique number of the array.
# Count how many times each numbers appears in the array.
# If the count is greater or equal to 2, divide it by 2.
# Return the number.

def pairs(arr)
  numbers = arr.uniq
  number_of_pairs = 0

  numbers.each do |num|
    count = arr.count(num)
    number_of_pairs += (count / 2) if count >= 2
  end
  number_of_pairs
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
