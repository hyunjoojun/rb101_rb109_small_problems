=begin
Input: An array of words
Output: Print out groups of words into arrays.

Rules:
- Group the words into anagrams.
- Anagrams are words that have same letters, but in different order.
- Print out one group of anagrams as an array.

Algorithm:
- Iterate through the words array.
- Split each words into characters.
- Sort the characters and compare it to other words.
- If sorted characters in a word equals other word, group them into one array.
- Iterate through all the words to group all of them.
- Print out each arrays.
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams = {}

words.each do |word|
  key = word.chars.sort.join

  if anagrams.key?(key)
    anagrams[key] << word
  else
    anagrams[key] = [word]
  end
end

anagrams.values.each { |value| p value }
