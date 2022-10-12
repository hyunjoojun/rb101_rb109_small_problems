# Write a method that takes a string argument and returns a new string that contains the
# value of the original string with all consecutive duplicate characters collapsed into a
# single character.

# Input: A String
# Output: A new string without any consecutive duplicate characters.

# Rules:
# The input string contains any letters, or numbers.
# It may have consecutive duplicate characters.
# Collapse any consecutive repeating characters into one character.
# Return the new string with collapsed characters.

# Split the string into characters.
# Iterate through each characters and push each character to the new string variable.
# Do not push if the last character of the new string equals current character.
# Return new string.

def collapse(string)
  characters = string.chars
  new_string = ''
  characters.each do |char|
    new_string << char unless new_string[-1] == char
  end
  new_string
end

p collapse('bbbbbbbbb') == 'b'
p collapse('wwooonndeerrfull woorrlldd') == 'wonderful world'
p collapse('222xyzxyzyx') == '2xyzxyzyx'
p collapse('Q') == 'Q'
p collapse('AAbbCC') == 'AbC'
p collapse('') == ''
