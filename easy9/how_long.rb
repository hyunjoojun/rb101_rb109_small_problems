=begin
Input: string
Output: array

Rules:
- The words in the string are separated by exactly one space.
- Any substring of non-space character is a word.
- Return an array that contains all the word in the string, and their length.
- Each element of the array should have the word, its length, and a space in between.

Algorithm:
- Split the words into an array.
- Iterate each words to get the length of each words.
- Return an array with the word and the length.
=end

def word_lengths(str_words)
  words = str_words.split(' ')
  words.map do |word|
    word + ' ' + word.length.to_s
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []