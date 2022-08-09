=begin
Input: A string
Output: An array of substrings

Rules:
- Return all substrings of an input string.
- The returned list should be in order where the substring begins.
- From the shortest to the longest.
- Use the leading_substring method from previous exercise.

Algorithm:
- Repeat the leading_substring method.
- Increment starting index from 0 to string.size
- Combine the nested array to get one array.
=end

def substrings(string)
  result = []

  (0...string.size).each do |start_index|
    this_substring = string[start_index..]
    result << leading_substrings(this_substring)
  end

  result.flatten
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
