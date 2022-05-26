=begin
input: string
output: integer of ASCII string value

rules:
- String#ord determines the ASCII value of a character
- ASCII string value is the sum of the ASCII values
  of every character in the string.
- Return the sum in integer

Algorithm:
- Split the string into characters.
- Iterate through each characters and use ord method
  to get the ASCII value of each characters.
- Set a sum variable = 0.
- Add all the values to the sum.
- Return the sum.
=end

def ascii_value(string)
  sum = 0
  string.chars.each { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

char = "a"
p char.ord.chr == char