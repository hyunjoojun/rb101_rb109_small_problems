=begin
input: input words from user
output: A sentence (string)

rules:
- Get input from user: noun, verb, adjective, and adverb.
- Make a sentence out of inputs.
- Do you 'verb' your 'noun' 'adjective' 'adverb'? That's hilarious!

Algorithm:
- Store user's input by asking.
- Print out a sentence with those inputs.
=end

# print 'Enter a noun: '
# noun = gets.chomp

# print 'Enter a verb: '
# verb = gets.chomp

# print 'Enter an adjective: '
# adjective = gets.chomp

# print 'Enter an adverb: '
# adverb = gets.chomp

# sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
# sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
# sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

# puts [sentence_1, sentence_2, sentence_3].sample

types = %w(noun verb adjective adverb)
words = {}

types.each do |type|
  a_an = type.start_with?('a') ? 'an' : 'a'
  puts "Enter #{a_an} #{type}: "
  words[type] = gets.chomp
end

sentence1 = "Do you #{words['verb']} your #{words['adjective']} #{words['noun']} #{words['adverb']}? That's hilarious!"
sentence2 = "The #{words['adjective']} #{words['noun']} #{words['verb']}s #{words['adverb']} over the lazy dog."
sentence3 = "The #{words['noun']} #{words['adverb']} #{words['verb']}s up #{words['adjective']} Joe's turtle."

puts [sentence1, sentence2, sentence3].sample
