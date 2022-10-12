# Re-order the characters of a string, so that they are concatenated into a new string in
# "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation
# shall simply be removed!
# The input is restricted to contain no numerals and only words containing the english
# alphabet letters.
# Example:
# alphabetized("The Holy Bible") # "BbeehHilloTy"

# Input: A String
# Output: A string (remove all non-alphabets and sort the letters)

# Rules:
# The input string contains alphabets and Whitespace, punctuation..
# Remove everything except english letters.
# Return case insensitive alpahbetical ordered letters.
# => Treat them as if they were all lowercased / uppercased.

# Delete all non_english letters.
# Split the string into characters.
# Sort the array of characters.
# Join them to a string and return it.

def alphabetized(s)
  clean_string = s.chars.select { |char| char =~ /[A-Za-z]/ }
  clean_string.sort_by { |letter| letter.downcase }.join
end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"
