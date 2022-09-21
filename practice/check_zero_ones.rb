# Given a binary string s, return true if the longest contiguous segment of 1's is
# strictly longer than the longest contiguous segment of 0's in s, or return false
# otherwise.

# For example, in s = "110100010" the longest continuous segment of 1s has length 2,
# and the longest continuous segment of 0s has length 3.

# Note that if there are no 0's, then the longest continuous segment of 0's is considered
# to have a length 0. The same applies if there is no 1's.

# Input: A String
# Output: true or false

# Rules:
# Return true if the longest contiguous segment of 1's is greater than 0's.
# return false otherwise.

# Find the longest contiguous segment of 1's and 0's.
# Compare the length of two segments.
# If the segment of 1's is greater, return true, else false.
# Contiguous segment of 1's : 1 has to be repeated.

def check_zero_ones(string)
  arr_one = []
  arr_zero = []
  length_one = 0
  length_zero = 0

  string.chars.each do |char|
    if char == '1'
      length_one += 1
      arr_one << length_one
      length_zero = 0
    else
      length_one = 0
      length_zero += 1
      arr_zero << length_zero
    end
  end

  return false if arr_one.empty?
  return true if arr_zero.empty?

  longest_length_one = arr_one.sort[-1]
  longest_length_zero = arr_zero.sort[-1]

  longest_length_one > longest_length_zero
end

p check_zero_ones("110") == true
p check_zero_ones("0011") == false
p check_zero_ones("1") == true
p check_zero_ones("0") == false
p check_zero_ones("110100010") == false
p check_zero_ones("1101") == true
p check_zero_ones("11010111100") == true
