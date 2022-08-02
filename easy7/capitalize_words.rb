=begin
Input: A string
Output: A string

Rules:
- The input string contains multiple words.
- Capitalize all the words in the input string.
- The first character of every word is capitalized and other letters are lowercase.
- Words are non-blank characters and in any order.

Algorithm:
- Split the words into an array.
- Iterate through the array and capitalize all the words.
- Return the new string.
=end

# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# def word_cap(string)
#   string.split.map! do |word|
#     word[0].upcase + word[1..].downcase
#   end.join(' ')
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
