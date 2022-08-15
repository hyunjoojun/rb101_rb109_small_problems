=begin
Input: A string
Output: An array of substrings

Rules:
- Return a list of all substrings.
- The list should be in order, the shortest to the longest.
- Use the leading_substrings method from previous exercise.

Algorithm:
- The leading_substring method gives substrings that starts with the first letter only.
- Should increment the index to get all the substrings.
=end

def leading_substrings(string)
  string.length.times.map do |idx|
    string[0..idx]
  end
end

def substrings(string)
  string.length.times.map do |idx|
    leading_substrings(string[idx..-1])
  end.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
