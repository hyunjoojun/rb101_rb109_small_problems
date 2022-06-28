=begin
input: string
output: new string

rules:
- Every character is doubled in new string.
- Empty string returns empty string.

Algorithm:
- Split all the characters in the input string.
- Iterate through each characters and double them.
- Return new string.
=end

def repeater(string)
  doubled_chars = string.chars.map { |char| char + char }
  doubled_chars.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
