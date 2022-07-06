=begin
Input: integer
Output: array of integers

Rules:
- Input number will be always greater than 0.
- Return array of integers in sequence between 1 and the argument.

Algorithm:
- Return an array of 1 to input number.
=end

def sequence(number)
  number.positive? ? (1..number).to_a : (number..-1).to_a
end

p sequence(5)
p sequence(3)
p sequence(1)
p sequence(-4)
p sequence(0)