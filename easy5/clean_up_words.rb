=begin
Input: A string
Output: A string

Rules:
- A string of words are given including non-alphabetic characters.
- Remove non-alphabetic characters and replace it with a space.
- Replace with one space for multiple non-alphabetic characters in a row.
- No consecutive spaces.

Algorithm:
- Substitute non-alphabetic characters with a space.
- Delete repeated spaces.
=end

def cleanup(words)
  words.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
