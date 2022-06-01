=begin
input: string of words or a word
output: string of words (the first and last letters of every word are swapped)

rules:
- Assume that every word contains at least one letter.
- The string will always contain at least one word.
- The string will only contain words and spaces.

Algorithm:
- Split the words.
- Iterate through each word and take the first letter and the last letter.
- Replace the first letter with the last letter.
- Replace the last letter with the first letter.
- Combine the words into a string and return it.
=end

def swap(words)
  new_word = words.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  new_word.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')