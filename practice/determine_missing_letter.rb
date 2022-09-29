# Find the missing letter
# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
#
# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
#
# The array will always contain letters in only one case.

# Example:
#
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'

# Use the English alphabet with 26 letters.

# Input: An array of letters
# Output: A string (letter)

# Rules:
# We have an array of English letters.
# We are missing one letter in between, they are in alphabetical order.
# Find the missing letter, return it as a string.
# Letters can be upcased or downcased.

# Set up a variable for an array of alphabetical letters.
# Make a copy of the array and downcase all the letters.
# Find the starting index that matches the first letter in the input array.
# Iterate through two arrays and check if they match.
# If they don't match push the letter into a variable called missing letters.
# Return the first letter of the missing letters.
# Upcase the letter if the original array had upcased letters.

LETTERS = ('a'..'z').to_a

def find_missing_letter(array)
  new_arr = array.map{ |char| char.downcase }
  starting_index = LETTERS.index(new_arr[0])
  missing_letters = ''
  0.upto(new_arr.length - 1) do |index|
    missing_letters << LETTERS[starting_index] if LETTERS[starting_index] != new_arr[index]
    starting_index += 1
  end
  LETTERS.include?(array[0]) ? missing_letters[0] : missing_letters[0].upcase
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"
