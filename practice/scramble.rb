# Write a function scramble(str1, str2) that returns true if a portion of
# str1 characters can be rearranged to match str2, otherwise return false.
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
# Only lower case letters will be used (a-z). No punctuation or digits will be included.

# Input: Two strings.
# Output: true or false.

# Rules:
# Make string2 by rearranging string1 characters.
# If there is no character in string1 to make string2, return false.
# Return true if string2 can be made with string1 characters.
# Input strings will have only lowercase letters.

# Take the string2 split it into characters.
# Iterate through the characters, delete the character from string1.
# If that is nil, return false.
# otherwise return true.

def scramble(str1, str2)
  characters = str2.chars
  characters.each do |char|
    return false if str1.sub!(char, '') == nil
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqty', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
