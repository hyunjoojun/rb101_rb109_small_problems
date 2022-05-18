=begin
input = 6 numbers from user
output = message saying if 6th number appears among the 5 numbers.

Set an empty array.
put first 5 numbers in the array.
check if the last number is in the array.
=end

positions = %w(1st 2nd 3rd 4th 5th last)
numbers = []

positions.each do |nth|
  puts "Enter the #{nth} number:"
  numbers << gets.chomp.to_i
end

last_number = numbers.pop

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
