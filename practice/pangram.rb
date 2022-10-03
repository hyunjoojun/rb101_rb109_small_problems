# A pangram is a sentence that contains every single letter of the alphabet at least once.
# For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
# because it uses the letters A-Z at least once (case is irrelevant).
# Given a string, detect whether or not it is a pangram. Return True if it is, False if
# not. Ignore numbers and punctuation.

# Input: A string(sentence)
# Output: true or false

# Return true if the sentence has all the alphabet letters at least once.
# Return false otherwise.
# Case is irrelevant.

# Downcase all the letters in the input string.
# Create a variable called letters and include all the letters.
# Iterate through all characters in the input string.
# Delete the character in the letters array.
# Return true if the letters array is empty.

def pangram?(string)
  letters = ("a".."z").to_a
  string.downcase.chars.each do |char|
    letters.delete(char)
  end
  letters.empty?
end

p pangram?("The quick brown fox jumps over the lazy dog") == true
p pangram?("This is not a pangram.") == false
