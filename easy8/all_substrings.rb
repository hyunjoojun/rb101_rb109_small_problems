=begin
Input: A string
Output: An array of substrings

Rules:
- Return an array with all substrings.
- Substrings that start at position 0 come first.
- Then all substrings that start at position 1 and so on.
- The elements of the array should be sorted from the shortest to the longest.
- Use the leading_substrings method from previous exercise.

Algorithm:
- Set up an empty array.
- Increment a number starting from 0 to string.size.
- Set up a substring and use it as leading_substring argument.
- Combine all the substrings.
- Return the array.
=end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def leading_substrings(string)
  string.length.times.map do |idx|
    string[0..idx]
  end
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
