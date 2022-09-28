=begin
Input: A string
Output: A string but words converted to string of digits

Rules:
- Convert any number words to integers in the given string.
- All other words and punctuation stays the same.

Algorithm:
- Create an array of number words.
- If they are in the string, convert it to its index.
- Return the new string.
=end

NUMBER_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(string)
  NUMBER_WORDS.each_with_index do |word, idx|
    string.gsub!(word, idx.to_s)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# NUMBERS = %w(zero one two three four five six seven eight nine)

# def word_to_digit(sentence)
#   NUMBERS.each do |word|
#     sentence.gsub!(/\b#{word}\b/, NUMBERS.index(word).to_s)
#   end
#   sentence
# end

# NUMBERS = {'zero' => "0", 'one' => "1", 'two' => "2", 'three' => "3", 'four' => "4", 'five' => "5", 'six' => "6", 'seven'=> "7", 'eight' => "8", 'nine' => "9"}

# def word_to_digit(str)
#   NUMBERS.each do |key, value|
#     str.gsub!(key, value)
#   end
#   str
# end
