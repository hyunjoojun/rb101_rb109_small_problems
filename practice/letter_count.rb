# You've to count lowercase letters in a given string and return the letter
# count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol'
# instead of string in Ruby and 'char' instead of string in Crystal.

# Input: A String
# Output: A hash

# Rules:
# The string has lowercase letters.
# Count all the letters and return as a hash.
# Keys are the letters in symbol.
# Values are the counts.

# Create an empty hash.
# Split the string into characters.
# Iterate through each characters, set it to the key and set the value to 1 if the hash
# does not already have this specific key.
# If the key already exists, then add to the count.
# Return the hash.

def letterCount(string)
  letter_count = {}
  characters = string.chars
  characters.each do |char|
    if letter_count.key?(char.to_sym)
      letter_count[char.to_sym] += 1
    else
      letter_count[char.to_sym] = 1
    end
  end
  letter_count
end

p letterCount('arithmetics') == { :a=>1, :r=>1, :i=>2, :t=>2, :h=>1, :m=>1, :e=>1, :c=>1, :s=>1 }
