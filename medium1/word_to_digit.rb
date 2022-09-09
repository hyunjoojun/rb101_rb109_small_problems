=begin
Input: A string
Output: A string but words converted to string of digits

Rules:
- Input string contains words.
- If words represent numbers, convert them into integers.
- All other words and punctuation remains the same.

Algorithm:
- Create an array of number words.
- Substitute the word into its index.
- Return a new string.
=end

NUMBER_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def word_to_digit(string)
  NUMBER_WORDS.each do |word|
    string.gsub!(word, NUMBER_WORDS.index(word).to_s)
  end
  string
end

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

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
