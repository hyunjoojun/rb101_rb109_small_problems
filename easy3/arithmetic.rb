=begin
Input = Two positive integers
Output = Prints result of operations.

Rules:
- Ask the user for two positive numbers.
- Print out the result of operations of two input numbers.
- Operations are: Addition, Subtraction, Product,
  Quotient, Remainder, and Power.
- Don't have to validate the input.

Algorithm:
- Set up two variables for user's input numbers.
- Write the operations between two numbers and get the output.
=end

def prompt(message)
  puts "==> #{message}"
end

nums = []
operations = %w(+ - * / % **)

prompt("Enter the first number:")
nums << gets.chomp.to_f

prompt("Enter the second number:")
nums << gets.chomp.to_f

operations.each do |op|
  prompt("#{nums[0]} #{op} #{nums[1]} = #{format("%.2f",nums.inject(op))}")
end
