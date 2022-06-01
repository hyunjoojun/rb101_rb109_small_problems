=begin
input: string of words
output: hash that shows the number of words of different sizes

rules:
- Words are separated by a space.
- Non-alphabetic characters are counted.
- If the string is empty, return a empty hash.

Algorithm:
- Set an empty hash.
- Split the words in the string.
- Iterate through the words and set the word's length equal to the hash's key.
- At the same time, set the value to 1.
- If the same key exists, add 1 to the existing value.
- Return the hash.
=end

def word_sizes(words)
  counts = Hash.new { |h, k| h[k] = 0 }

  words.split.each do |word|
    counts[word.length] += 1
  end

  counts
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
