=begin
input: string
output: array of substrings

rules:
- Get all substrings that starts at the beginning of the original string.
- Return array should be arranged in order from shortest to longest.

Algorithm:
- Split the string into characters.
- Set up an empty array.
- Increment index.
- Push substrings in order into the empty array.
- Return the array.
=end

def leading_substrings(string)
  substrings = []
  string.chars.each_index { |index| substrings << string[0..index] }
  substrings
end

p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')
