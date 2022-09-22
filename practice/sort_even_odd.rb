# You are given a 0-indexed integer array nums. Rearrange the values of nums according to
# the following rules:
# Sort the values at odd indices of nums in non-increasing order.
# For example, if nums = [4,1,2,3] before this step, it becomes [4,3,2,1] after. The values
# at odd indices 1 and 3 are sorted in non-increasing order.
# Sort the values at even indices of nums in non-decreasing order.
# For example, if nums = [4,1,2,3] before this step, it becomes [2,1,4,3] after. The values
# at even indices 0 and 2 are sorted in non-decreasing order.
# Return the array formed after rearranging the values of nums.

# Example 1:
# Input: nums = [4,1,2,3]
# Output: [2,3,4,1]
# Explanation:
# First, we sort the values present at odd indices (1 and 3) in decreasing order.
# So, nums changes from [4,1,2,3] to [4,3,2,1].
# Next, we sort the values present at even indices (0 and 2) in increasing order.
# So, nums changes from [4,1,2,3] to [2,3,4,1].
# Thus, the array formed after rearranging the values is [2,3,4,1].

# Example 2:
# Input: nums = [2,1]
# Output: [2,1]
# Explanation:
# Since there is exactly one odd index and one even index, no rearrangement of values
# takes place.
# The resultant array formed is [2,1], which is the same as the initial array.

# Is the input array will always be even length? like 4 elements, or 2?
# Odd index integers are decreasing order.
# Even index integers are increasing order.
# Ex: [1, 3, 5, 4] odd: 3, 4 => 4, 3, even: 1, 5 => 1, 5

# Even index numbers should be sorted.
# Odd index numbers should be sorted then reversed.
# Group them together and then join them at the end of the iteration.
# Setup empty arrays for evens and odds.
# Sort the arrays and then create final array.

def sort_even_odd(arr)
  odds = []
  evens = []

  arr.each_with_index do |num, idx|
    odds << num if idx.odd?
    evens << num if idx.even?
  end

  evens.sort.zip(odds.sort.reverse).flatten
end

p sort_even_odd([1, 3, 5, 4]) == [1, 4, 5, 3]
p sort_even_odd([4, 1, 2, 3]) == [2, 3, 4, 1]
p sort_even_odd([2, 4, 1, 78]) == [1, 78, 2, 4]
p sort_even_odd([2, 1]) == [2, 1]
