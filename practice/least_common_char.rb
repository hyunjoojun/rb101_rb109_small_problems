# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Input: A string(lowercase / uppercase letters, empty space)
# Output: A string of letter/space/any punctuations.

# Rules:
# return lowercase letter if that letter is the least common character in the string.
# Return the first occuring character if there are multiple answers.
# Uppercase letter and lowercase letters are equal. Count them together.

# Downcase all the letters in the string.
# Count each characters and store it into a hash.
# Split the string into characters.
# Iterate through characters and create the hash.
# Create a hash : keys => characters , values = counts.
# Return the smallest counted letter.(key)

def least_common_char(string)
  downcased_str = string.downcase
  count_hash = {}
  downcased_str.chars.each do |char|
    if count_hash.has_key?(char)
      count_hash[char] += 1
    else
      count_hash[char] = 1
    end
  end
  count_hash.min_by { |_, count| count }[0]
end

# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".