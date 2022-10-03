# For a given nonempty string s find a minimum substring t and the maximum number k, such
# that the entire string s is equal to t repeated k times.
# The input string consists of lowercase letters.
# Your function should return :
# an array [t, k]
# Example #1:
# for string
# s = "ababab";
# the answer is
# ("ab", 3)
# Example #2:
# for string
# s = "abcde"
# the answer is
# ("abcde", 1)
# because for this string "abcde" the minimum substring t, such that s is t repeated k
# times, is itself.

# Input: A string (nonempty)
# Output: An array (substring, an integer)

# "ababab"
# substring = 'a'
# Check substring's length = 1
# String's length = 6
# string_length / substring_length = 6
# substring * 6 == string

# substring = 'ab'
# 6 / 2 = 3, 'ab' * 3 == String
# Check upto string lenth / 2 which is the middle.

# Get all the substrings that are shorter than middle length.
# string_length / substring_length = multiplier
# return substring if substring * multiplier == string

def get_substrings(string)
  substrings = []
  0.upto(string.length - 1) do |idx|
    substrings << string[0..idx]
  end

  substrings
end

def f(string)
  substrings = get_substrings(string)
  substrings.each do |substring|
    multiplier = string.length / substring.length
    return [substring, multiplier] if substring * multiplier == string
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
