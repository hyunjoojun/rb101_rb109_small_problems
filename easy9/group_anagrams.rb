=begin
Input: An array of words
Output: Print out groups of words into arrays.

Rules:
- Group the words by anagrams.
- Anagrams are words that have same letters but in a different order.
- One group of words are in one array.
- Print out one array then print out another array on the next line.

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
      anagrams[key] << word
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
