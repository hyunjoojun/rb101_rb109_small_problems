=begin
Input: 3 angles of a triangle (integers)
Output: A symbol, name of the triangle or invalid

Rules:
- 3 angels of triangles are arguments.
- If one angle is 90 then it's a right triangle.
- If all 3 angles are less than 90, it's an acute triangle.
- If one angle is greater than 90, it's an obtuse triangle.
- The sum of all 3 angles is equal to 180.
- All angles must be greater than 0.
- Return a symbol, :right, :acute, :obtuse, or :invalid.
- All numbers are integers and degrees.

Algorithm:
- Make an array of angles, check if the sum == 180.
- Check if all the angles are > 0.
- Return the symbol according to the angles given.
=end

def triangle(a1, a2, a3)
  angles = [a1, a2, a3]

  if angles.sum != 180 || angles.include?(0)
    :invalid
  elsif angles.include?(90)
    :right
  elsif angles.any? { |angle| angle > 90 }
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
