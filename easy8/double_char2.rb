=begin
Input: A string
Output: A string

Rules:
- Return a new string with all alphabetic characters doubled.
- Do not double vowels, digits, punctuation, and white spaces.

Algorithm:
- Set up an empty string.
- Split the string into characters.
- If the character is not vowels nor punctuation, digits, nor white spaces,
  push the characters 2 times into empty string.
- All other characters, push once.
- Return new string.
=end

VOWELS = %w(a e i o u)

# def double_consonants(string)
#   new_string = ''

#   string.chars.each do |char|
#     if char =~ /[^A-z]/ || VOWELS.include?(char)
#       new_string << char
#     else
#       new_string << char << char
#     end
#   end

#   new_string
# end

def double_consonants(string)
  string.chars.map do |char|
    if char =~ /[^A-z]/ || VOWELS.include?(char)
      char
    else
      char * 2
    end
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
