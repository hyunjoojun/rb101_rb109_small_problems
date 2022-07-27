=begin
Input = User's input number and user's choice of sum or product
Output = Sum or product of numbers

Rules
- Ask the user to enter a positive integer.
- Ask the user to choose one: sum or product.
- If the user chose sum,
output the sum of numbers between 1 and entered integer.
- If the user chose product,
output the product of numbers between 1 and entered integer.

Algorithm:
- Set up a variable number and assign it to the user input.
- If user enters 's', get the sum, if 'p' get the product.
- Print out the message with the sum or product.
=end

def valid_number?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_letter?(letter)
  letter.include?('s') || letter.include?('p')
end

def convert_letter_to_operator(letter)
  if letter == 's'
    'sum'
  elsif letter == 'p'
    'product'
  end
end

def calculation(integer, operator)
  if operator == 'sum'
    (1..integer).inject(:+)
  elsif operator == 'product'
    (1..integer).inject(:*)
  end
end

integer = ''
loop do
  puts 'Please enter an integer greater than 0:'
  integer = gets.chomp
  if valid_number?(integer)
    integer = integer.to_i
    break
  else
    puts 'Invalid number.'
  end
end

letter = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  letter = gets.chomp.downcase
    if valid_letter?(letter)
      break
    else
      puts 'Unknown operation.'
    end
end

operator = convert_letter_to_operator(letter)
result = calculation(integer, operator)

puts "The #{operator} of the integers between 1 and #{integer} is #{result}."
