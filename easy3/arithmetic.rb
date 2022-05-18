=begin
input = number1 , number2
optput = number1 + number2
         number1 - number2
         number1 * number2
         number1 / number2
         number1 % number2
         number1 ** number2
=end

nums = []
operations = %w(+ - * / % **)

puts "Enter the first number:"
nums << gets.to_i

puts "Enter the second number:"
nums << gets.to_i

operations.each do |op|
  puts "#{nums[0]} #{op} #{nums[1]} = #{nums.inject(op)}"
end
