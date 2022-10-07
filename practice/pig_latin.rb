# Move the first letter of each word to the end of it, then add "ay" to the end of the
# word. Leave punctuation marks untouched.
# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

# Input: A String
# Output: A String

# Rules:
# The input string contains words separated by space.
# It contains uppercase letters and lowercase letters.
# Move the first letter to the end of the word.
# Add 'ay' at the end of each word.
# Leave the punctuation.
# Return the string.

# Split the string into words.
# Iterate through the words array.
# Move the first letter toward the back of the word.
# Add 'ay' at the end of the word.
# Combine transformed words into a string.
# Return the string.
# If the word does not contain letters, do not change anything.

def pig_it text
  text.split(" ").map do |word|
    word =~ /[a-zA-Z]/ ? word[1..-1] + word[0] + "ay" : word
  end.join(" ")
end

p pig_it('Pig latin is cool') == 'igPay atinlay siay oolcay'
p pig_it('This is my string') == 'hisTay siay ymay tringsay'
p pig_it('Hello world !') == 'elloHay orldway !'
