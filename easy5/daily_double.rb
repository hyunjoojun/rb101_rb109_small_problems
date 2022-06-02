=begin
input: string
output: string without any consecutive duplicate characters

rules:
- Do not use squeeze method.
- Any consecutive duplicate characters are collapsed into a single character.
- Empty string will return empty string.
- If there is no duplicate characters, return single character.

Algorithm:
- Set an empty final string.
- Split all the letters in the string.
- Iterate through each letters.
- If the letter in final string is not equal to current letter,
  push it into the final string.
- Return the final string.
=end

def crunch(text)
  clean_text = ''

  text.chars.each do |char|
    if clean_text[-1] != char
      clean_text << char
    end
  end

  clean_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''