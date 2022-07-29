=begin
Input: A string
Output: An integer

Rules:
- Get sum of ASCII values of all the characters in the string.
- Use #String#ord to determine the ASCII value of a character.
- Empty string should return 0.

Algorithm:
- Split the string into characters.
- Iterate through each characters, use .ord to get the value.
- Add up all the values to get the sum.
- Return the sum.
=end

def ascii_value(words)
  values = []

  words.chars.each { |char| values << char.ord }
  values.sum
end

char = "a"
p char.ord.chr == char

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
