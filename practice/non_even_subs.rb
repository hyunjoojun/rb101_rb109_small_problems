# Given a string of integers, return the number of odd-numbered substrings that can
# be formed.
# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341,
# a total of 7 numbers.
# solve("1341") = 7. See test cases for more examples.

# Input: A string of number
# Output: An integer

# Rules:
# How many possible substrings that are odd numbers?
# Input string is a number.
# It can be divided into substrings that are numbers.
# We are looking only the odd numbers.

# Get all the possible substrings.
# When the substrings are converted to integers, we want odd nubmers only.
# Count the number of substrings and return the count.

def solve(string)
  substrings = []

  0.upto(string.length - 1) do |idx1|
    idx1.upto(string.length - 1) do |idx2|
      substrings << string[idx1..idx2] if string[idx1..idx2].to_i.odd?
    end
  end
  substrings.size
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
