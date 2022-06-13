require 'pry'

=begin
input: string
output: a string with all words capitalized

rules:
- The first character of every word is capitalized.
- All other letters are lowercase.
- The string contains non-blank characters.
- The words are any sequence.

Algorithm:
- Split the words.
- Iterate through each words and capitalize them.
- Return the string.
=end

# def word_cap(words)
#   capitalized_words = words.split.map do |word|
#     word.capitalize
#   end
#   capitalized_words.join(' ')
# end

# def word_cap(words)
#   new_words = words.split.map do |word|
#     word[0].upcase + word[1..].downcase
#   end
#   new_words.join(' ')
# end

def word_cap(words)
  words.split.map do |word|
    word = word.downcase
    word[0] = word[0].upcase

    word
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'