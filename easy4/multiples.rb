=begin
Input = An integer
Output = An integer

Rules:
- Input number will always be positive.
- Find all multiples of 3 or 5 between 1 and input number.
- Add all the multiples to get the sum.

Algorithm:
- Iterate through numbers from 1 to input number.
- Select if the number is evenly divisible by 3 or 5.
- Add all the numbers in the returned array.
- Return the sum.
=end

def multisum(num)
  (1..num).select do |int|
    int % 3 == 0 || int % 5 == 0
  end.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
