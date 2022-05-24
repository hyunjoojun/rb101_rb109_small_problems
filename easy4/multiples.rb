=begin
input: integer greater than 1
output: sum of 3 and 5 multiples (integer)

rules:
- Find all multiples of 3 or 5 between 1 and input number.
- Number has to evenly divide by 3 or 5
- Input number is greater and 1

Algorithm:
- Set an empty array for multiples.
- Iterate through all the numbers and check if it's multiples.
- Numbers that have no remainder when divided by 3 or 5 are multiples.
- If it's multiples push numbers into the array.
- Sum all the numbers in the array.
=end

def multisum(number)
  multiples = []

  (1..number).each do |num|
    if num % 3 == 0 || num % 5 == 0
      multiples << num
    end
  end

  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168