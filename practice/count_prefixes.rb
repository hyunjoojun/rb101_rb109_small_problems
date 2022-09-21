# You are given a string array words and a string s, where words[i] and s comprise only
# of lowercase English letters.
# Return the number of strings in words that are a prefix of s.
# A prefix of a string is a substring that occurs at the beginning of the string.
# A substring is a contiguous sequence of characters within a string.
# Note that the same string can occur multiple times in words, and it should be counted each time.

# Input: An array substrings, and A String
# Output: An integer

# Rules:
# The first argument represents array of substrings.
# The second argument is a string/word.
# If the word starts with these substrings in the array.
# Return the count of substrings that are prefix of the word.

# Setup the count that is equal to 0.
# Iterate through the array and check if the word starts with substring.
# If it does, increment the count by 1.
# Return the count.

# def count_prefixes(array, string)
#   count = 0

#   array.each do |substring|
#     count += 1 if string.start_with?(substring)
#   end
#   count
# end

def count_prefixes(array, string)
  array.map do |substring|
    string.start_with?(substring)
  end.count(true)
end

p count_prefixes(["f", "fl", "flow", "f", "a"], "flower") == 4
p count_prefixes(["a", "b", "c", "ab", "bc", "abc"], "abc") == 3
p count_prefixes(["a", "a"], "aa") == 2
p count_prefixes(["a", "b", "ab", "abs", "abs"], "absolutely") == 4
p count_prefixes(["c", "d", "e"], "abc") == 0
