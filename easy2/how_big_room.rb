=begin
Input = User's input for length and width of a room.
Output = Area of the room in sq meters and sq feet.

Rules
- Ask a user for length and width of a room in meters.
- Display area of the room in sq meters and sq feet.
- 1 square meter is 10.7639 square feet.
- Don't have to validate the input.

Algorithm:
- Store user's input into two variables, length and width.
- Area = length * width
- Input is in meters.
- Area in sq meters = length * width
- Area in sq ft = Area in sq meters * 10.7639
=end

SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQIN = 144
SQFEET_TO_SQCM = 929.03

puts "Enter the length of the room in feet:"
length_feet = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width_feet = gets.chomp.to_f

area_sqft = (length_feet * width_feet).round(2)
area_sqin = (area_sqft * SQFEET_TO_SQINCH).round(2)
area_sqcm = (area_sqft * SQFEET_TO_SQCM).round(2)

puts "The area of the room is #{area_sqft} square feet " + \
"(#{area_sqin} square inches and #{area_sqcm} square centimeters)."
