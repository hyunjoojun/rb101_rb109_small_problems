=begin
input: string
output: middle character or characters

rules:
- Input string is not empty.
- If input string length is odd, return one middle character.
- If input string length is even, return two middle characters.

Algorithm:
- Get the string length.
- string length / 2 is the middle character if length is odd.
- If length is even, (length / 2) - 1 character and length / 2 character is the middle.
- Return the middle characters.
=end

def center_of(string)
  center_index = string.length / 2
  if string.length.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
