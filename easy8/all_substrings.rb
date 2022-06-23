=begin
input: string
output: array of all substrings

rules:
- Get all the substrings.
- Return array should be arranged in order.
- All substrings that start at position 0 comes first.
- All substrings that start at position 1 comes next and so on.
- Order all substrings from shortest to longest.

Algorithm:
- Set up an empty array.
- Set up an index that increments by 1.
- Get a substring that we can pass onto leading_substrings method.
- Push output from leading_substrings into the empty array.
- Repeat the process until the end.
- Return the array.
=end

def substrings(string)
  substrings = []
  (0...string.length).each do |index|
    this_substring = string[index..-1]
    substrings << leading_substrings(this_substring)
  end
  substrings.flatten
end

def leading_substrings(string)
  substrings = []
  string.chars.each_index { |index| substrings << string[0..index] }
  substrings
end

p substrings('abcde')