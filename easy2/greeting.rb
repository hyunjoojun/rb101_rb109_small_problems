=begin
input = name of user
output = greeting

** if name of user include !
then computer yells back to the user.
=end

puts "What is your name?"
name = gets.chomp!

if name[-1] == '!'
  name.chop!.upcase!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
