=begin
input = user's age
        retirement age
output = year now
         year of retirement
         how many years left until retirement

years left == retirement age - age
year now + years left == year of retirement
year now = Time.now.year
=end

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

year_now = Time.now.year
years_left = retirement_age - age
year_of_retirement = year_now + years_left

puts "It's #{year_now}. You will retire in #{year_of_retirement}."
puts "You have only #{years_left} years of work to go!"
