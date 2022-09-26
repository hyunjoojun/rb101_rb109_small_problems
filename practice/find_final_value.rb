# You are given an array of integers nums. You are also given an integer original which is
# the first number that needs to be searched for in nums.
# You then do the following steps:
# If original is found in nums, multiply it by two (i.e., set original = 2 * original).
# Otherwise, stop the process.
# Repeat this process with the new number as long as you keep finding the number.
# Return the final value of original.

# Example 1:
# Input: nums = [5,3,6,1,12], original = 3
# Output: 24
# Explanation:
# - 3 is found in nums. 3 is multiplied by 2 to obtain 6.
# - 6 is found in nums. 6 is multiplied by 2 to obtain 12.
# - 12 is found in nums. 12 is multiplied by 2 to obtain 24.
# - 24 is not found in nums. Thus, 24 is returned.

# Example 2:
# Input: nums = [2,7,9], original = 4
# Output: 4

# Input: An array of numbers.
# Ouput: An integer

# Rules:
# We have two arguments, one is an array of numbers, an integer(original).
# If the original number is present in the array, multiply number by 2.
# If that number is not found, return the number else repeat the process.

# Check if the original number is in the array.
# If not found, return the number.
# If found, original number * 2 = new number.
# Look for the new number in the array, if found then * 2. if not found, return the number.

def find_final_value(nums, original)
  current_num = original
  loop do
    if nums.include?(current_num)
      current_num *= 2
    else
      break
    end
    break if original * 2 == original
  end
  current_num
end

p find_final_value([5,4,7], 1) == 1
p find_final_value([5], 5) == 10
p find_final_value([5,3,6,1,12], 3) == 24
p find_final_value([0,0,0], 0) == 0
p find_final_value([5,7,8,0], 0) == 0
