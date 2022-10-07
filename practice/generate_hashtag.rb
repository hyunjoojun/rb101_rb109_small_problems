# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!
# Here's the deal:
# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.
# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false

# Input: A String
# Output: false or a string.

# Rules:
# Return false if the string is empty.
# Return false if the length of string is greater or equal to 140.
# Remove empty spaces between the words.
# New string will start with hashtag(#).
# All the words will capitalized (First letter will be upcased)

# Return false if string is empty or length of the string is greater than or equal to 140.
# Split the string into words.
# Iterate through the words and capitalize all the words.
# Prepend '#' in front of the first word.
# Combine all the words.

def generateHashtag(str)
  cap_words = str.split(' ').map { |word| word.capitalize }
  return false if cap_words.empty?

  result = cap_words.prepend('#').join
  result.length > 140 ? false : result
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
