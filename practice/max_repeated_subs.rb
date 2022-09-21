# Given a string, return the maximum length of a non-empty substring made of a
# single repeated character.

# Input: A string
# Output: An Integer, max length of substring that's repeated with a single letter.

# Rules:
# Return the maximum length of a substring that is repeated with a single letter.

# Get all the substirngs:
# Only the ones that would have length of 1 when we delete all the repeated characters.
# "string".chars.uniq.length == 1
# Once we have the substring that we need, get the longest substring and return its length.

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      if string[idx1..idx2].chars.uniq.length == 1 && string[idx1..idx2].length != 1
        substrings << string[idx1..idx2]
      end
    end
  end
  substrings
end

def max_repeated_substring_length(string)
  substrings = substrings(string)
  return 0 if substrings.empty?

  substrings.max_by { |substring| substring.length }.length
end

p max_repeated_substring_length("aappplee") == 3
p max_repeated_substring_length("abbcccddddeeeeedcba") == 5
p max_repeated_substring_length("abcd") == 0
p max_repeated_substring_length("greencode") == 2
p max_repeated_substring_length("rruunn") == 2
