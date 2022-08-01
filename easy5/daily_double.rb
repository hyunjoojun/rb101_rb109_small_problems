=begin
Input: A string
Output: A string

Rules:
- Delete any consecutive duplicate characters.
- Do not use squeeze method.
- Return empty string if input is empty.

Algorithm:
- Split all the characters.
- Iterate through each characters and compare to the previous character.
- Set up a empty string.
- Push the character into the empty string.
- Skip if there are any duplicates.
- Return the new string.
=end

def crunch(words)
  crunch_words = ''

  words.chars do |char|
    crunch_words << char if crunch_words[-1] != char
  end

  crunch_words
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
