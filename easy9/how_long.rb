=begin
Input: A string
Output: An array

Rules:
- The string contains words.
- Count the length of each words.
- Return an array with the word and the length of the word as an element.
- The word and the length is separated by a space.
- Any substring of non-space character is a word.

Algorithm:
- Split the string into words array.
- Use map method to return the array.
- Iterate through each words and count its length.
- Add it to the word with a space in between.
- Return the array.
=end

def word_lengths(words)
  words.split.map { |word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
