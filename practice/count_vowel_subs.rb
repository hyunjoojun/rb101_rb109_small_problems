# A substring is a contiguous (non-empty) sequence of characters within a string.
# A vowel substring is a substring that only consists of vowels ('a', 'e', 'i', 'o', and
# 'u') and has all five vowels present in it.
# Given a string word, return the number of vowel substrings in word.

# Input: A String
# Output: An Integer, number of substrings that has all the vowels.

# Rules:
# Count all the substrings that has 'aeiou'.
# Count only contiguous charcters that has all the vowels.

# Get all the substrings, but only consider if its length is 5 or greater.
# Count number of substrings, and return an integer.

def substrings(string)
  substrings = []
  0.upto(string.length - 4) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      substrings << string[idx1..idx2] if string[idx1..idx2].length >= 5
    end
  end
  substrings
end

def count_vowel_substrings(string)
  substrings = substrings(string)
  vowel_subs = substrings.select do |substring|
    substring.chars.uniq.sort.join == 'aeiou'
  end
  vowel_subs.length
end

p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0
