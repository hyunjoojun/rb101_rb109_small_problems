=begin
Input = String of words
Output = A message with number of characters

Rules:
- Ask the user for a word or words.
- Count how many characters there are.
- Do not count empty spaces.

Algorithm:
- Split the words.
- Join them without spaces in between.
- Return the length.
- Print out a message with the length.
=end

puts "Please write word or multiple words:"
words = gets.chomp

char_length = words.split.join.length

puts "There are #{char_length} characters in '#{words}'."
