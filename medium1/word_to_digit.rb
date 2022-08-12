=begin
Input: A string
Output: A string but words converted to string of digits

Rules:
- The input string contains alphabetical words.
- Some words are numbers in words.
- Convert numbers to integer but in string format.
- Return the same string but only numbers transformed into integers.

Algorithm:
- Create an array with words 'zero', 'one' and so on.
- Iterate through the array and substitute the word with its index.
- Return the string.
=end

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  NUMBERS.each do |word|
    sentence.gsub!(/\b#{word}\b/, NUMBERS.index(word).to_s)
  end
  sentence
end

# NUMBERS = {'zero' => "0", 'one' => "1", 'two' => "2", 'three' => "3", 'four' => "4", 'five' => "5", 'six' => "6", 'seven'=> "7", 'eight' => "8", 'nine' => "9"}

# def word_to_digit(str)
#   NUMBERS.each do |key, value|
#     str.gsub!(key, value)
#   end
#   str
# end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'