# Given a string s, find the first non-repeating character in it and return its index.
# If it does not exist, return -1.

# Input: A String
# Output: An integer, index

# Rules:
# - Return the index of non repeating character in the input string.
# - Return -1 if there is no non-repeating character, or the input string is an empty string.

# Split the string into characters.
# Iterate through the characters and check if the character's count is 1.
# If the count is 1, return its index.
# If the count is not 1, return -1.

def first_uniq_char(string)
  non_repeat_char = string.chars.select do |char|
    string.count(char) == 1
  end

  if non_repeat_char.empty?
    return -1
  else
    string.index(non_repeat_char[0])
  end
end

p first_uniq_char("") == -1
p first_uniq_char("aabccde") == 2
p first_uniq_char("rainbow") == 0
p first_uniq_char("eeaatt") == -1
p first_uniq_char("lovelettuce") == 1
p first_uniq_char("aabb") == -1
