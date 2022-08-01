=begin
Input: A string
Output: A string

Rules:
- A string of words are given separated by spaces.
- Switch the first letter and last letter of all the words.
- Every word contains at least one letter or at least one word.
- Input string will always contain words and spaces, nothing else.

Algorithm:
- Split the words by spaces which will give an array of words.
- Take the array of words, iterate through words and switch the letters.
- Take the transformed array and join the words.
- Return the transformed words.
=end

def swap_first_last_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  new_words = words.split.map do |word|
    swap_first_last_letters(word)
  end
  new_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
