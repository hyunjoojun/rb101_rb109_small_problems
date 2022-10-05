# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the
# same string with all even indexed characters in each word upper cased, and all odd
# indexed characters in each word lower cased. The indexing just explained is zero based,
# so the zero-ith index is even, therefore that character should be upper cased and you
# need to start over for each word.
# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces
# will only be present if there are multiple words. Words will be separated by a single
# space(' ').

# Input: A String
# Output: A String

# Rules:
# Return the string but even indexed characters are uppercased and
# odd indexed characters are lowercased.
# The input string has words (letters and spaces)
# All the words should start with index 0.
# -> All the first letter of words start with uppercase.

# Split the string into words. (empty space)
# Iterate through the words with index and if index is even, upcase the letter.
# If index is odd, downcase the letter.
# Return transformed string.

def weirdcase(string)
  string.split(' ').map do |word|
    word.chars.map.with_index do |char, index|
      if index.even?
        char.upcase
      else
        char.downcase
      end
    end.join
  end.join(' ')
end

p weirdcase("String") == "StRiNg"
p weirdcase("Weird string case") == "WeIrD StRiNg CaSe"
p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'
