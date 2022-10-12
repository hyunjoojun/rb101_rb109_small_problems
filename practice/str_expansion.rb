# Given a string that includes alphanumeric characters ('3a4B2d') return the expansion of
# that string: The numeric values represent the occurrence of each letter preceding that
# numeric value. There should be no numeric characters in the final string. Empty strings
# should return an empty string.
# The first occurrence of a numeric value should be the number of times each character
# behind it is repeated, until the next numeric value appears.
# string_expansion('3D2a5d2f') == 'DDDaadddddff'
# string_expansion('3abc') == 'aaabbbccc'       # correct
# string_expansion('3abc') != 'aaabc'           # wrong
# string_expansion('3abc') != 'abcabcabc'       # wrong
# If there are two consecutive numeric characters the first one is ignored.
# string_expansion('3d332f2a') == 'dddffaa'
# If there are two consecutive alphabetic characters then the first character has no effect
# on the one after it.
# string_expansion('abcde') == 'abcde'
# Your code should be able to work for both lower and capital case letters.
# string_expansion('') == ''

# Input: A String(letters, numbers)
# Output: A string (expanded form)

# Rules:
# The number before the letters reperesents how many times the letter has to appear in the output String.
# The letter(s) that comes after the number has to be printed n number of times.
# => n is the number that comes before the letters.
# Return a string with letters only.
# Should work for both lowercase and uppercase.
# Return empty string when empty string is the input.
# If we have consecutive numbers, only count the last number.
# String will have only numbers or letters(lowercase/uppercase)

# Split the string into characters.
# Iterate through the characters, if the character is a number, store this into a variable called number.
# Create a result variable which equals to empty string.
# If the character is letter, (number * character) push it into empty string(result)
# If the character is number, store this into a variable.
# Return the result string.

def string_expansion(s)
  number = 1
  result = ''

  s.chars.each do |char|
    if char =~ /[A-Za-z]/
      result << (char * number)
    else
      number = char.to_i
    end
  end

  result
end

p string_expansion('3abc') == 'aaabbbccc'
p string_expansion('3D2a5d2f') == 'DDDaadddddff'
p string_expansion('0d0a0v0t0y') == ''
p string_expansion('3d332f2a') == 'dddffaa'
p string_expansion('abcde') == 'abcde'
