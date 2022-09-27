# Given a string word, return the sum of the number of vowels ('a', 'e', 'i', 'o', and 'u')
# in every substring of word.
# A substring is a contiguous (non-empty) sequence of characters within a string.
# Note: Due to the large constraints, the answer may not fit in a signed 32-bit integer.
# Please be careful during the calculations.

# Example 1:
# Input: word = "aba"
# Output: 6
# Explanation:
# All possible substrings are: "a", "ab", "aba", "b", "ba", and "a".
# - "b" has 0 vowels in it
# - "a", "ab", "ba", and "a" have 1 vowel each
# - "aba" has 2 vowels in it
# Hence, the total sum of vowels = 0 + 1 + 1 + 1 + 1 + 2 = 6.

# Example 2:
# Input: word = "abc"
# Output: 3
# Explanation:
# All possible substrings are: "a", "ab", "abc", "b", "bc", and "c".
# - "a", "ab", and "abc" have 1 vowel each
# - "b", "bc", and "c" have 0 vowels each
# Hence, the total sum of vowels = 1 + 1 + 1 + 0 + 0 + 0 = 3.

# Example 3:
# Input: word = "ltcd"
# Output: 0
# Explanation: There are no vowels in any substring of "ltcd".

# Input: A String
# Output: An integer

# Rules:
# Count number of vowels in all possible substrings.
# Return the number of vowels. 'aeiou'

# Get all the possible substrings.
#   - Create an empty array of substrings.
#   - "aba" starting index = 0, ending index = 0.
#   - "a", increment the ending index by 1 until the end of the string.
#   - Until we reach the end of the string's length
#   - After we increment the ending index, also need to increment the starting index.
#   - Until we reach the end of the string's length.
#   - As we increment the index, obtain each substrings and push all into the array.
# Count 'a', 'e', 'i', 'o', and 'u'
# Add them up and return the sum.

def find_all_substrings(string)
  substrings = []
  0.upto(string.length - 1) do |start_idx|
    start_idx.upto(string.length - 1) do |ending_idx|
      substrings << string[start_idx..ending_idx]
    end
  end
  substrings
end

def count_vowels(string)
  substrings = find_all_substrings(string)
  substrings.join.count('aeiou')
end

p count_vowels("aba") == 6
p count_vowels("abc") == 3
p count_vowels("ltcd") == 0
