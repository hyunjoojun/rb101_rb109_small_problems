# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
# A subsequence of a string is a new string that is formed from the original string by
# deleting some (can be none) of the characters without disturbing the relative positions
# of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

# Example 1:
# Input: s = "abc", t = "ahbgdc"
# Output: true

# Example 2:
# Input: s = "axc", t = "ahbgdc"
# Output: false

# Input: two strings
# Output: true or false

# Rules:
# - Return true if the first string is a subsequence of the second string.
# - The first string (s) can be created with the second string by deleting some letters or none in the second string.
# - The second string (t) must include all the letters from the first string and the letters must be in order.

# Algorithm:
# - Check if all of the characters in the first string exist the second string.
# - If all the characters are in the second string, check if the characters are in order.
# - If not, return false.
# - If the charcters are in order, return true else false.

def is_subsequence(first, second)
  boolean = first.chars.all? do |char|
    first.count(char) <= second.count(char)
  end

  if boolean
    in_order?(first, second)
  else
    false
  end
end

def in_order?(first, second)
  index = []

  first.chars.each do |char|
    index << second.index(char)
  end

  index == index.sort
end

p is_subsequence("aabb", "aabb") == true
p is_subsequence("aaa", "abacba") == true
p is_subsequence("bbb", "abcde") == false
p is_subsequence("axcd", "abxcd") == true
p is_subsequence("axc", "ahbgdc") == false
p is_subsequence("abc", "ahbgdc") == true
p is_subsequence("abc", "ahbgdc") == true
p is_subsequence('abc', 'aabbcc') == true
p is_subsequence('aec', 'abcde') == false
