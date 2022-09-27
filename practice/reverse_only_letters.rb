# Given a string s, reverse the string according to the following rules:
# All the characters that are not English letters remain in the same position.
# All the English letters (lowercase or uppercase) should be reversed.
# Return s after reversing it.

# Input: A String
# Output: A String

# Rules:
# Any English letters has to be reversed in order.
# non English letters stays the same.
# Return the new string? or mutate the original?

# Delete all the non letter characters then reverse all the letters.
# Save these letters to variable called sorted letters.
# Split the string into characters.
# Iterate through each characters and create a new string.
# If the character is not a letter don't change anything but push it into new string.
# If the character is a letter, push sorted letters in order.
# Return the new string.

def reverse_only_letters(string)
  sorted_letters = string.delete('^a-zA-Z').reverse
  index = 0
  new_string = ''
  string.chars.each do |char|
    if char =~ /[^a-zA-Z]/
      new_string << char
    else
      new_string << sorted_letters[index]
      index += 1
    end
  end
  new_string
end

p reverse_only_letters("a-bC-dEf-ghIj") == "j-Ih-gfE-dCba"
p reverse_only_letters("ab-cd") == "dc-ba"
p reverse_only_letters("Test1ng-Leet=code-Q!") == "Qedo1ct-eeLg=ntse-T!"
