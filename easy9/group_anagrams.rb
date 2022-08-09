=begin
Input: An array of words
Output: Print out groups of words into arrays.

Rules:
- Print out groups of words that are anagrams.
- Anagrams are words that have same letters but in a different order.
- Group them into arrays and print out the arrays.

Algorithm:
- Set up an empty hash.
- Iterate through the words.
- Sort the letters in alphabetical order, compare it to other words.
- Set the sorted letter word as a key.
- If the key exists in the hash, push the word into the array.
- If the key does not exist, set up new key.
- Print out the words using the hash.
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams = {}

words.each do |word|
  key = word.chars.sort.join

  if anagrams.has_key?(key)
    anagrams[key] << word
  else
    anagrams[key] = [word]
  end
end

anagrams.values.each { |value| p value }
