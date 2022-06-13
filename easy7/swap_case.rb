=begin
input: string
output: new string with swap case

rules:
- All uppercase letters are replaced by lowercase letters.
- All lowercase letters are replaced by uppercase letters.
- Do not use swapcase method.
- All other characters that are not letters stays the same.

Algorithm:
- Set a uppercase letters array.
- Set a lowercase letters array.
- Split all characters.
- Iterate through each characters.
- If the character is uppercase, downcase the letter.
- If the character is downcase, upcase the letter.
- All others remains the same.
- Return new string.
=end

UPPERCASE = ("A".."Z").to_a
LOWERCASE = ("a".."z").to_a

def swapcase(words)
  swapped_letters = words.chars.map do |char|
    if UPPERCASE.include?(char)
      char.downcase
    elsif LOWERCASE.include?(char)
      char.upcase
    else
      char
    end
  end
  swapped_letters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
