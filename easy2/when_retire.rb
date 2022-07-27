=begin
Input = current age and retirement age
Output = Current year, retirement year,
and how many years left till retirement.

Rules
- Get the input from a user, current age and retirement age.
- Display when the user will retire and how many years left.

Algorithm:
- Set two variables current age and retirement age.
- retirement age - current age = years left
- current year + years left = retirement year
=end

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_left = retirement_age - current_age
retirement_year = current_year + years_left

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
