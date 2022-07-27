=begin
Input = 6 integers from user
Output = Does the 6th number appears in the first 5 numbers?

Rules:
- Ask user to enter 6 numbers.
- Print a message that says whether or not
  the last number appears in the first 5 numbers.

Algorithm:
- Set up 6 variables assign them to the user's input numbers.
- Make an array of first 5 numbers.
- Check if the last number exists in the array of 5 numbers.
- Output the message.
=end

orders = %w(1st 2nd 3rd 4th 5th last)
numbers = []

orders.each do |position|
  puts "=> Enter the #{position} number:"
  numbers << gets.chomp.to_i
end

last_num = numbers.pop

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} does not appear in #{numbers}."
end
