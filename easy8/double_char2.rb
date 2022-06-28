=begin
input: string
output: new string

rules:
- Every character is doubled except vowels, digits, punctuation, and whitespace.
- Empty string returns empty string.

Algorithm:
- Split all the characters in the input string.
- Iterate through each characters and double them
  if the character is not included in the exceptions.
- Return new string.
=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
