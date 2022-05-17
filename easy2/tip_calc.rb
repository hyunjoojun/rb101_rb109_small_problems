=begin
input = the bill amount
        tip rate (%)
output = tip amount
         total amount = (bill + tip)
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

tip = ((percentage * 0.01) * bill)
total = (bill + tip)

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total)}"
