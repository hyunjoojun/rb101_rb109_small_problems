# You are given a string num representing a large integer. An integer is good if it meets
# the following conditions:

# It is a substring of num with length 3.
# It consists of only one unique digit.

# Return the maximum good integer as a string or an empty string "" if no such integer
# exists.

# Note:
# A substring is a contiguous sequence of characters within a string.
# There may be leading zeroes in num or a good integer.

# Input: A string
# Output: A substring

# Rules:
# Return the maximum good integer.
# Good Integer : a digit that is repeated 3 times.

# All the substrings that repeats a digit 3 times.
# Create an empty array for substrings
# Increase the index of the stirng and get all the substrings.
# string[0..1], string[0..2], String[0..3]
# string[1..1], string[1..2]..
# If the length == 3, push that substring into the array.
# Convert the substring to integers.
# Sort the substrings and get the maximum number.

def substrings(string)
  substrings = []
  0.upto(string.length - 1) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      substrings << string[idx1..idx2] if string[idx1..idx2].length == 3
    end
  end
  substrings
end

def largest_good_integer(string)
  substrings = substrings(string)
  good_integers = []

  substrings.each do |substring|
    good_integers << substring if substring.chars.uniq * 3 == substring.chars
  end

  ans = good_integers.map { |number| number.to_i }.sort.last
  ans == 0 ? "000" : ans.to_s
end

p largest_good_integer('13455587222') == "555"
p largest_good_integer('456987') == ""
p largest_good_integer("11458000") == "000"
p largest_good_integer("111") == "111"
p largest_good_integer("111222333444555666") == "666"
p largest_good_integer("42352338") == ""
