# For example, reversing 2021 gives 1202. Reversing 12300 gives 321 as the leading zeros
# are not retained.
# Given an integer num, reverse num to get reversed1, then reverse reversed1 to get
# reversed2. Return true if reversed2 equals num. Otherwise return false.

# Example 1:
# Input: num = 526
# Output: true
# Explanation: Reverse num to get 625, then reverse 625 to get 526, which equals num.

# Example 2:
# Input: num = 1800
# Output: false
# Explanation: Reverse num to get 81, then reverse 81 to get 18, which does not equal num.

# Example 3:
# Input: num = 0
# Output: true
# Explanation: Reverse num to get 0, then reverse 0 to get 0, which equals num.

# Input: An integer
# Ouput: true or false

# Rules:
# If we revese the order of digits of given integer, we get reversed number.
# We reverse the number again and compare this to the input integer.
# If they are equal return true otherwise false.

# Split the number into digits.
# Reverse the order of digits.
# Repeat the process again to reverse it again.
# Compare this number to the input number.
# If they are the same, return true else false.

def is_same_after_reversals(int)
  reversed1 = int.digits.join.to_i
  reversed2 = reversed1.digits.join.to_i

  int == reversed2
end

p is_same_after_reversals(0) == true
p is_same_after_reversals(11) == true
p is_same_after_reversals(158) == true
p is_same_after_reversals(25879) == true
p is_same_after_reversals(2500) == false
p is_same_after_reversals(11150) == false
