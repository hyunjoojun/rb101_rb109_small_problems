=begin
input: string of words and assortment of non-alphabetic characters
output: string with all non-alphabetic characters replaced by spaces

rules:
- Any non-alphabetic characters should be replaced by a space.
- One or more alphabetic characters equals to one space.
- Assume the string is all lowercased.

Algorithm:
- Split all the characters.
- Iterate through each characters to check if it is an alphabet or not.
- If it is non-alphabetic character, replace it with space.
=end

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' '
    end
  end

  clean_chars.join.squeeze(' ')
end

p cleanup("---what's my +*& line?")