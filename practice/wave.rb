# Your task is to create a function that turns a string into a Mexican
# Wave. You will be passed a string and you must return that string in an array where an
# uppercase letter is a person standing up.
# Rules
#  1. The input string will always be lower case but maybe empty.
#  2. If the character in the string is whitespace then pass over it as if it was an empty seat
# Example
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# Input: A String
# Output: An array of strings.

# Rules:
# Return an array of strings that have one letter capitalized.
# First element has first letter capitalized.
# Second elemet has second letter capitalized.
# And so on until the last letter is capitalized.
# Skip the empty space.
# String may contain more than one word.
# String only contains lowercase letters.
# Empty string has to return empty array.

# Set up a variable called result, set it equal to an empty array.
# Split the string into characters.
# Iterate through the characters and if it's empty space skip it.
# Upcase the current character, add other letters and make a word.
# Push the word into the empty array.
# Return the result array.

def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "

    result << str[0...idx] + char.upcase + str[idx+1..-1]
  end
  result
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
