=begin
input: two integers
output: print out numbers, Fizz, Buzz, and FizzBuzz

rules:
- The first input number is the starting number.
- The second input number is the ending number.
- Print out all the numbers.
- If a number is divisible by 3, print "Fizz".
- If a number is divisible by 5, print "Buzz".
- If a number is divisible by 3 and 5, print "FizzBuzz".

Algorithm:
- Set an array that has all the numbers.
- Iterate through the array to check if it's divisible by 3 and/or 5.
- Print number or word accordingly.
=end

def fizzbuzz_value(num)
  if (num % 3).zero? && (num % 5).zero?
    'FizzBuzz'
  elsif (num % 3).zero?
    'Fizz'
  elsif (num % 5).zero?
    'Buzz'
  else
    num
  end
end

def fizzbuzz(starting_num, ending_num)
  numbers = (starting_num..ending_num).to_a
  result = []

  numbers.each do |num|
    result << fizzbuzz_value(num)
  end
  puts result.join(', ')
end

fizzbuzz(1, 15)