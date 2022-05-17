# example output = Teddy is 69 years old!
# age = random number between 20 and 200

puts "What is your name?"
name = gets.chomp
age = rand(20..200)

name = "Teddy" if name.empty?

puts "#{name} is #{age} years old!"