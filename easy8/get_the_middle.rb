=begin
Input: A string
Output: A string of middle character

Rules:
- The input string is not empty.
- Return the middle character of the input string.
- If the string has an odd length, return one character.
- If the string has an even length, return two characters.

Algorithm:
- Get the middle index.
- If the string's length is odd, return one character with the middle index.
- If the string's length is even, return two characters one in the middle
  and one before that.
=end

def center_of(words)
  middle = words.length / 2
  words.length.even? ? words[(middle - 1)..middle] : words[middle]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
