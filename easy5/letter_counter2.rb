=begin
Input: A string
Output: A hash

Rules:
- Modify the word_sizes method from previous exercise.
- Non-alphabetic characters are not counted.

Algorithm:
- Delete the characters that are not letters.
=end

def word_sizes(words)
  counts = Hash.new { |h, k| h[k] = 0 }

  words.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end

  counts
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
