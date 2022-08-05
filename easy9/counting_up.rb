=begin
Input: A positive integer
Output: An array

Rules:
- The output array contains all integers starting from 1 to the input integer.
- The elements should be in numeric order.
- The input number will always be greater than 0.

Algorithm:
- Return (1..num) to array.
=end

def sequence(num)
  num.positive? ? (1..num).to_a : (num..1).to_a
end

# def sequence(num)
#   1.upto(num).to_a
# end

p sequence(5)
p sequence(3)
p sequence(1)
p sequence(-1)
p sequence(0)
