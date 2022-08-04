=begin
Input: Two integers
Output: Print out numbers with words

Rules:
- The first argument is the starting number.
- The second argument is the ending number.
- Print out all the numbers in between.
- Print 'Fizz' for the numbers that are divisible by 3.
- Print 'Buzz' for the numbers that are divisible by 5.
- Print 'FizzBuzz' for the numbers that are divisible by 3 and 5.

Algorithm:
- (starting..ending) print each numbers.
- if number % 3 print Fizz.
- if number % 5 print Buzz.
- if number % 3 && number % 5 print FizzBuzz.
- else, print number.
=end

def fizzbuzz(first, last)
  result = []

  (first..last).each do |num|
    if num % 3 == 0 && num % 5 == 0
      result << 'FizzBuzz'
    elsif num % 3 == 0
      result << 'Fizz'
    elsif num % 5 == 0
      result << 'Buzz'
    else
      result << num
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 15)
