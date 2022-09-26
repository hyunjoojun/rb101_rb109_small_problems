# Given a string s, return the length of the longest substring between two equal
# characters, excluding the two characters. If there is no such substring return -1.
# A substring is a contiguous sequence of characters within a string.

# Input: A String
# Output: An Integer

# Rules:
# Are there any repeating character?
# If there are, we need to look for longest substring in between.
# Return the length of the longest substring in between the same characters.
# Return -1 if there are no repeating characters.

# Get all the substrings.
# Set up another array for results.
# If the first letter is equal to the last letter, push that substring into results array.
# get the longest substring out of the results array.
# Return the longest substring length - 2 to get rid of two equal characters.

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      substrings << string[idx1..idx2]
    end
  end
  substrings
end

def max_length_between_equal_characters(string)
  substrings = substrings(string)
  results = []

  substrings.each do |substring|
    results << substring if substring[0] == substring[-1]
  end

  results.max_by { |sub| sub.length }.length - 2
end

p max_length_between_equal_characters("acbsewb") == 3
p max_length_between_equal_characters("acbsewba") == 6
p max_length_between_equal_characters("aa") == 0
p max_length_between_equal_characters("cbzxy") == -1
