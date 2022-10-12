# You are required to, given a string, replace every letter with its position
# in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# "a" = 1, "b" = 2, etc.
# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# ( as a string )

# Input: A string
# Output: A string(numbers)

# Rules:
# The input string contains letters, punctuations, etc.
# We ignore any characters that are not letters.
# Transform the letter to a number.
# The number represents a position in the alphabet.
# Return the strinig with numbers(positions in the alphabet.)
# There should be empty space in between the numbers

# Downcase the string.
# Split the text into characters.
# Skip if character is not letters.
# Set up a constant which will be an array of characters in alphabetical order.
# Iterate through the characters and get its (index + 1) from the costant variable to get the number.
# Create an empty array and set it to a variable called results.
# Push the numbers into the results array.
# After iteration is over, join the array with empty spaces to get a string.

LETTERS = ("a".."z").to_a

def alphabet_position(text)
  downcased_characters = text.downcase.chars
  results = []

  downcased_characters.each do |char|
    if char =~ /[a-z]/
      results << (LETTERS.index(char)) + 1
    end
  end
  results.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
