# Given a string s, find the length of the longest substring without
# repeating characters.

# input: A String
# output: An integer, the length of the longest substring
# Rules:
# - Return the length of the longest substring, without repeating characters.
# Option:
# - Find all the substrings, but no repeating letters.
#   - While index 1 is 0, increase index 2 by 1 until index2 is equal to string's length - 1. Index2 also starts from 0.
#  - Once the iteration is over, increase index1 by 1 until index1 is equal to the string's length - 1. Index2 should start from index 1 through string's length - 1.
# - Both index1 and index2 will increase by 1 until the string's length - 1
# - Once we have all the substrings, find the longest substring.
# - Return the length of the longest substring.

def find_substrings(string)
  substrings = []

  0.upto(string.length - 1) do |index1|
    index1.upto(string.length - 1) do |index2|
      substrings << string[index1..index2] if string[index1..index2].chars == string[index1..index2].chars.uniq
    end
  end
  substrings
end

def length_of_longest_substring(string)
  return '' if string.empty?

  substrings = find_substrings(string)
  substrings.max_by { |substring| substring.length }.length
end

p length_of_longest_substring('aaaabbcba') == 3
p length_of_longest_substring('aaaaaa') == 1
p length_of_longest_substring('pwwkea') == 4
p length_of_longest_substring('') == ''
p length_of_longest_substring('a') == 1
p length_of_longest_substring('robtuunop') == 5
p length_of_longest_substring('tucccaassaa') == 3
