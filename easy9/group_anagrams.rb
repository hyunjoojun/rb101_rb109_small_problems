=begin
Input: An array
Output: Prints out arrays of words

Rules:
- Group words into an array that are anagrams.
- Anagrams are words that have the same exact letters but in a different order.
- Output an array with anagrams,
output another array with different anagrams, and so on.

Algorithm:
- Iterate through the input array which are words.
- Split each word into letters and sort the letters.
- Compare sorted letters to check if the words are anagrams to each other.
- If sorted letters equals to the other letters, group them into an array.
- When the iteration is done, output the array.
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def group_anagrams(words)
  anagrams = {}
  words.each do |word|
    key = word.chars.sort.join

    if anagrams.has_key?(key)
      anagrams[key].push(word)
    else
      anagrams[key] = [word]
    end
  end
  anagrams
end

def print_anagrams(words)
  group_anagrams(words).each_value do |value|
    p value
  end
end

print_anagrams(words)