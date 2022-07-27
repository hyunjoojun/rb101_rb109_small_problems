=begin
Input = Bill amount and a tip rate
Output = Tip amount and total amount

Rules
- Ask a user for the bill amount and a tip rate.
- Display the tip amount and total amount.

Algorithm:
- Store the user's input into two variables, bill and tip rate.
- tip amount = bill * (tip percentage / 100)
- total amount = bill * tip amount
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip_amount = (bill * (tip_percentage / 100)).round(2)
total_amount = (bill + tip_amount).round(2)

puts "The tip is $#{format("%.2f",tip_amount)}"
puts "The total is $#{format("%.2f",total_amount)}"
