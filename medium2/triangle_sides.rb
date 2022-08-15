=begin
Input: The lengths of 3 sides of a triangle (integers)
Output: A symbol, name of triangle or invalid

Rules:
- When all 3 sides are equal in length = equilateral
- When 2 sides are equal, 3rd is different = isosceles
- When all 3 sides are different in length = scalene
- A valid triangle has a sum of two shortest sides that is greater than the longest side.
- All sides must be greater than 0.
- Return :invalid if these conditions are not satisfied.
- Else, return the triangle's name in symbol.

Algorithm:
- Create an array of 3 numbers and sort them.
- If any of them are 0, return :invalid.
- Add 1st and 2nd number and check if the sum is greater than 3rd number.
- If it's not greater, return :invalid.
- Now if all the sides are equal, return :equilateral.
- If not, check if any two are equal, return :isosceles.
- If they are all different, return :scalene.
=end

def triangle(s1, s2, s3)
  sides = [s1, s2, s3].sort
  sum = sides[0] + sides[1]
  return :invalid if sides.include?(0) || sum < sides[2]

  if sides.all?(sides[0])
    :equilateral
  elsif sides.any? { |side| sides.count(side) == 2}
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
