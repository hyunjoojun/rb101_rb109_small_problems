=begin

Rules:
- Create a story template with blanks for words.
- Get input from a user for words.
- Prompt a noun, a verb, an adverb, and an adjective.

Algorithm:
- Ask the user to input words.
- Store the words and output a short story.
=end

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
