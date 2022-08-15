=begin
Input: 3 angles of a triangle (integers)
Output: A symbol, name of the triangle or invalid

Rules:
- One angle is 90 = right
- All 3 angles are less than 90 = acute
- One angle is greater than 90 = obtuse
- If the sum of all 3 angles is not 180, invalid triangle.
- If any angle is less or equal to 0, invalid triangle.
- 3 angels are arguments and return a symbol.
- All numbers are integers and they are degrees.

Algorithm:
- Create an array of angles.
- If the sum of 3 angles is not equal to 180, return :invalid.
- If any angles are < 0, return :invalid.
- If any of the angles equal to 90, :right.
- If all the angles are less than 90, :acute.
- If any of the angles is greater than 90, :obtuse.
=end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]
  return :invalid if angles.sum != 180 || angles.any?(0)

  if angles.any?(90)
    :right
  elsif angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
