# A string s can be partitioned into groups of size k using the following procedure:
# The first group consists of the first k characters of the string, the second group
# consists of the next k characters of the string, and so on. Each character can be a part
# of exactly one group.

# For the last group, if the string does not have k characters remaining, a character fill
# is used to complete the group.

# Note that the partition is done so that after removing the fill character from the last
# group (if it exists) and concatenating all the groups in order, the resultant string
# should be s.

# Given the string s, the size of each group k and the character fill, return a string
# array denoting the composition of every group s has been divided into, using the above
# procedure.

# Example 1:
# Input: s = "abcdefghi", k = 3, fill = "x"
# Output: ["abc","def","ghi"]
# Explanation:
# The first 3 characters "abc" form the first group.
# The next 3 characters "def" form the second group.
# The last 3 characters "ghi" form the third group.
# Since all groups can be completely filled by characters from the string, we do not need
# to use fill.
# Thus, the groups formed are "abc", "def", and "ghi".

# Example 2:
# Input: s = "abcdefghij", k = 3, fill = "x"
# Output: ["abc","def","ghi","jxx"]
# Explanation:
# Similar to the previous example, we are forming the first three groups "abc", "def", and
# "ghi".
# For the last group, we can only use the character 'j' from the string. To complete this
# group, we add 'x' twice.
# Thus, the 4 groups formed are "abc", "def", "ghi", and "jxx".

# Input: A string, an integer, and another string.
# Output: An Array

# Rules:
# The first string consists of letters.
# It needs to be divided so that each element of the output array has the n length.
# n is the integer that is given as an argument.
# If the last element of array does not have enough letters to have n length,
# the filler is used which is the third argument a letter.

# Create an empty array for the result.
# Use index to divide the string.
# string[0...2] where 2 is the divisor.
# The starting index increase by the divisor n.
# ending index is also increased by the divisor n.
# Repeat the process until the ending index is greater than string's length.
# Get the result array.
# If the last element of the array less than the divisor, add filler to the last element.

def divide_string(str, divisor, filler)
  results = []
  idx1 = 0
  idx2 = idx1 + divisor

  results << filler * divisor if str.empty?

  loop do
    results << str[idx1...idx2]
    idx1 += divisor
    idx2 += divisor
    break if idx1 > str.length
  end

  if str.length % divisor != 0 && results[-1].length < divisor
    results[-1] += filler until results[-1].length == divisor
  elsif results[-1].empty?
    results.pop
  end
  results
end

p divide_string("aabbccd", 2, "x") == ["aa", "bb", "cc", "dx"]
p divide_string("abcdefghij", 3, "x") == ["abc", "def", "ghi", "jxx"]
p divide_string("aa", 3, "x") == ["aax"]
p divide_string("abcdefghi", 3, "x") == ["abc", "def", "ghi"]
p divide_string("", 2, "x") == ["xx"]
p divide_string("aaa", 1, "x") == ["a", "a", "a"]
