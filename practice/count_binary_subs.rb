# Give a binary string s, return the number of non-empty substrings that have the same
# number of 0's and 1's, and all the 0's and all the 1's in these substrings are grouped
# consecutively.
# Substrings that occur multiple times are counted the number of times they occur.

# Example 1:
# Input: s = "00110011"
# Output: 6
# Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's:
# "0011", "01", "1100", "10", "0011", and "01".
# Notice that some of these substrings repeat and are counted the number of times they occur.
# Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.

# Example 2:
# Input: s = "10101"
# Output: 4
# Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of
# consecutive 1's and 0's.

# Input: A string of number
# Output: An Integer

# Rules:
# Find all the substrings that have the same number of 0's and 1's.
# All the 0's and all the 1's have to be consecutive.
# 0's have to be grouped together and 1's also.

# Find all the substrings.
# We need to check if 0's are consecutive and 1's are consecutive.
# If they are, are they equal length?
# If these conditions match push substrings into an empty array.
# Return that array's length.

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      substrings << string[idx1..idx2] if string[idx1..idx2].length.even?
    end
  end
  substrings
end

def consecutive(substrings)
  substrings.select do |sub|
    sub.chars.sort.join == sub || sub.chars.sort.reverse.join == sub
  end
end

def count_binary_substrings(string)
  substrings = substrings(string)
  consecutive_subs = consecutive(substrings)

  consecutive_subs.select do |sub|
    sub.count('0') == sub.count('1')
  end.length
end

p count_binary_substrings("00110011") == 6
p count_binary_substrings("10101") == 4
p count_binary_substrings("01101100") == 5
p count_binary_substrings("1") == 0
