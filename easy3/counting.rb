=begin
input = a word or words
output = number of characters in words. (Don't count spaces)
=end

puts "Please write word or multiple words:"
words = gets.chomp

number_of_characters = words.delete(' ').size

puts "There are #{number_of_characters} characters in \"#{words}\"."
