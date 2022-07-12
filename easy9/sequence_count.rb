=begin
Input: Two integers
Output: An array

Rules:
- The first argument is the number of elements for the output array.
- The second arguemnt is the first element in the output array.
- The output array's elements will be multiples of the starting number.
- The first argument will be always 0 or greater.
- The second argument can be any integer.
- If the first argument is 0, an empty array is returned.

Algorithm:
- The first argument is count.
- The second argument is first number.
- Iterate through 1 to count.
- Create a new array by multiplying the first number by 1 to count.
- Return the new array.
=end

def sequence(count, first)
  (1..count).map { |value| value * first }
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
