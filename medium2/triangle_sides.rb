=begin
Input: The lengths of 3 sides of a triangle (integers)
Output: A symbol, name of triangle or invalid

Rules:
- The sum of the two shortest sides must be greater than the longest side.
- All the sides must be greater than 0.
- Equilateral trianges: all 3 sides are equal.
- Isosceles triangles: 2 sides are equal.
- Scalene triangles: all 3 sides are different.
- 3 arguments are the lengths of the triangles.
- Return a symbol, :equilateral, :isosceles, :scalene, or :invalid.

Algorithm:
- Create an array of sides that is sorted by length.
- [s1, s2, s3] s1 is the shortest side, s3 is the longest side.
- This has to be true: s1 + s2 > s3
- All sides have to be greater than 0.
- If these conditions pass, check each sides.
- s1 == s2 == n3, :equilateral
- s1 == s2 || s2 == s3 || s1 == s3, :isosceles
- s1 != s2, s2 != s3 :scalene
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
