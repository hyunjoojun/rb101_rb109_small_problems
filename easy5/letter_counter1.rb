=begin
Input: A string
Output: A hash

Rules:
- Words are separated by a space.
- Non-alphabetic characters are counted.
- If the string is empty, return a empty hash.
- Return a hash with keys that are length of words and values that are count.

Algorithm:
- Set an empty hash that has initial value of 0.
- Split the words in the string.
- Iterate through the words and set the word's length equal to the key.
- Add 1 to the value.
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
