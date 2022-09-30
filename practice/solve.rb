# The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a
# length of 2. Given a lowercase string that has alphabetic characters only (both vowels
# and consonants) and no spaces, return the length of the longest vowel substring. Vowels
# are any of aeiou.

# Input: A String
# Output: An Integer

# Rules:
# Return the length of the longest vowel substring.
# The input string has only lowercase alphabetic characters and no spaces.
# The vowels are a, e, i, o, and u

# Get all the substrings that has only vowels.
# Start from index 0 go upto string's length - 1 which will be index 1.
# Index2 will be starting from index1, through string's length -1.
# string[index1..index2] to get substrings.
# Substrings that have vowels.
# Among those substrings, get the longest substring.
# Return the length of the longest substring.

VOWELS = %w(a e i o u)

def get_all_substrings(string)
  substrings = []
  0.upto(string.length - 1) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      substrings << string[idx1..idx2]
    end
  end
  substrings
end

def solve(string)
  substrings = get_all_substrings(string)

  vowel_substrings = substrings.select do |substring|
    substring.chars.all? { |char| VOWELS.include?(char) }
  end
  vowel_substrings.max_by { |sub| sub.length }.length
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
