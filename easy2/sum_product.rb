=begin
input = integer > 0
        sum or product?
output = sum of all numbers between 1 and the integer.
         product of all numbers between 1 and the integer.

integer == 5
sum == 15

integer == 6
product == 720
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
  puts "Please enter an integer greater than 0:"
  integer = gets.chomp
  if valid_number?(integer)
    integer = integer.to_i
    break
  else
    puts "Invalid number."
  end
end

letter = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  letter = gets.chomp.downcase
    if valid_letter?(letter)
      break
    else
      puts "Unknown operation."
    end
end

operator = convert_letter_to_operator(letter)
result = calculation(integer, operator)

puts "The #{operator} of the integers between 1 and #{integer} is #{result}."