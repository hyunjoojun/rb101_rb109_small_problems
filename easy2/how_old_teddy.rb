=begin
Output = String with Teddy's age

Rules
- Teddy's age is random number between 20 and 200.

Algorithm:
- Print Teddy's age by using string interpolation.
=end

def display_age
  puts "What is your name?"
  name = gets.chomp
  name = "Teddy" if name.empty?

  age = (20..200).to_a.sample
  puts "#{name} is #{age} years old!"
end

display_age
