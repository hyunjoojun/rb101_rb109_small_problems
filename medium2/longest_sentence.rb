=begin
Input: Sentences
Output: Length of longest sentence

Rules:
- From a text file, find the longest sentence based on the number of words.
- Sentences may end with ., !, or ?.
- Words are separated by a space.
- Print out number of words in the longest sentence.

Algorithm:
- Split the text into sentences.
- Split the sentences into words.
- Compare each sentences' length and return the longest.
=end

text = File.read('sample.txt')
sentences = text.split(/\.|\?|!/)

longest = sentences.max_by do |sentence|
  words = sentence.split(' ')
  words.length
end

longest_length = longest.split(' ').length

puts longest
puts "Contains #{longest_length} words"
z