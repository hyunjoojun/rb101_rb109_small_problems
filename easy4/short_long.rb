=begin
input: two strings
output: one string of (shorter string + longer string + shorter string)

rules: - Two strings have different lengths
       - Method takes two arguments(strings)
       - Return a string with no empty spaces

Algorithm:
- Compare two strings by their length.
- Combine those strings in order.
- Return one string.
=end

def short_long_short(letters1, letters2)
  if letters1.length > letters2.length
    letters2 + letters1 + letters2
  else
    letters1 + letters2 + letters1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
