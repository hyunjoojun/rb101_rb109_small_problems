# Write a method that takes an array of consecutive letters as input and returns the
# missing letter.

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

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def determine_missing_letter(array)
  new_arr = array.map { |char| char.downcase }
  starting_index = LETTERS.index(new_arr[0])
  missing_letters = ''
  0.upto(new_arr.length - 1) do |index|
    missing_letters << LETTERS[starting_index] if LETTERS[starting_index] != new_arr[index]
    starting_index += 1
  end
  LETTERS.include?(array[0]) ? missing_letters[0] : missing_letters[0].upcase
end

p determine_missing_letter(['a', 'b', 'c', 'd', 'f']) == 'e'
p determine_missing_letter(['o', 'q', 'r', 's']) == 'p'
p determine_missing_letter(['g', 'h', 'i', 'k']) == 'j'
p determine_missing_letter(['A', 'C', 'D']) == 'B'
p determine_missing_letter(['S', 'T', 'U', 'W']) == 'V'
