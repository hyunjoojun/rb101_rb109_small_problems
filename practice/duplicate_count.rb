# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive alphabetic
# characters and numeric digits that occur more than once in the input string. The input
# string can be assumed to contain only alphabets (both uppercase and lowercase) and
# numeric digits.
# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

# Input: A String
# Output: An Integer

# Rules:
# We are looking for any characters that repeats (Appears more than 2 times).
# Return how many characters are repeated in the string.
# If the string is empty, return 0.
# If all the characters don't have any duplicates, return 0.
# Case insensitive : Uppercase letters are equal to lowercase letters.
# The string may contain English letters and numbers.

# Downcae the input string.
# Split the downcased string into characters.
# Iterate through the characters and select the character if count is not 1. (greater or equal to 2).
# Return the length of the array after deleting all the duplicates.

def duplicate_count(text)
  text = text.downcase
  duplicates = text.chars.reject do |char|
    text.count(char) == 1
  end
  duplicates.uniq.length
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2
p duplicate_count("1233") == 1
