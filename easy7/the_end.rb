=begin
Input: A string of words
Output: A string of one word

Rules:
- The input string contains words.
- Return the next to last word.
- Words are any sequence of non-blank characters.
- Input string will always contain at least two words.

Algorithm:
- Split the sentence into words.
- Return the next to last word.
=end

def penultimate(sentence)
  if sentence.split.length <= 1
    sentence
  else
    sentence.split[-2]
  end
end

def middle_word(words)
  length = words.split.length
  middle = length / 2

  if length > 2 && length.odd?
    words.split[middle]
  elsif length.even?
    ''
  else
    words
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p penultimate('hello') == 'hello'
p penultimate('') == ''

p middle_word('last word') == ''
p middle_word('hello my name') == 'my'
p middle_word('') == ''
p middle_word('hi') == 'hi'
p middle_word('hello my name is Jane!') == 'name'
p middle_word('hi, how are you?') == ''
