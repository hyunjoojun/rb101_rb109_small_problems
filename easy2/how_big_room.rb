=begin
Ask the user for input (length and width)

input = length of the room in meters
        width of the room in meters

output = area of the room in square meters
         area of the room in square feet

1 square meter == 10.7639 square feet
area in sq meter == length * width
area in sq ft == area in sq meter * 10.7639

Ex:
length = 10
width = 7
area = 70.0 sq meters (753.47 sq ft)
=end

SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_sq_ft = (length * width).round(2)
area_sq_in = (area_sq_ft * SQFT_TO_SQIN).round(2)
area_sq_cm = (area_sq_ft * SQFT_TO_SQCM).round(2)

puts "The area of the room is #{area_sq_ft} square feet
        (#{area_sq_in} square inches)
        (#{area_sq_cm} square centimeters)"
