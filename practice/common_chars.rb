=begin
Given array of strings made only of lowercase letters, return array of
all characters that show up in all strings within the given array
(including duplicates) For example, if a character occurs 3 times in
all strings, but not 4 times, you need to include that character three
times in the final answer.

Input: An array of strings
Output: An array of common letters in all the strings

Rules:
- The input array has strings that are all lowercase letters.
- If a character appears in all the strings, return it within the array.
- Include all the duplicates.

Algorithm:
- We can use the first string to compare all the letters.
- Split the first string into characters.
- Iterate through each characters and check if all the strings has the character.
- If all strings have the character, select the character and return it.

# Find the shortest word.
# Break the shortest word into characters.
# Iterate through the characters, check if all the words contain the character.
# If yes, then push the character into a new array.
# Delete the letter from the words.
# Return the new array.

=end

# def common_chars(array)
#   array = array.map { |word| word.dup }

#   first_str = array.shift
#   first_str.chars.select do |char|
#     array.all? do |word|
#       word.sub!(char, '')
#     end
#   end
# end


def common_chars(words)
  results = []
  shortest_word = words.min_by { |word| word.length }

  shortest_word.chars.each do |char|
    if words.all? { |word| word.include?(char) }
      results << char
      words.each { |word| word.sub!(char, '') }
    end
  end
  results
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(%w(aabbaaaa ccdddddd eeffee ggrrrrr yyyzzz)) == []
p common_chars(["car", "racecar", "rat"]) == ["a", "r"]
p common_chars(["abc", "def", "hij"]) == []
